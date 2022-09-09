#include <bits/stdc++.h>
#include "nav2_core/controller.hpp"
#include "nav2_msgs/action/follow_path.hpp"
#include <rclcpp/rclcpp.hpp>
#include "nav2_util/simple_action_server.hpp"
using namespace std::chrono;
using namespace std::chrono_literals;
namespace obstacle_avoidance{
    using Action = nav2_msgs::action::FollowPath;
    using ActionServer = nav2_util::SimpleActionServer<Action>;
    class ObstacleAvoidance: public rclcpp :: Node {
        public:
        ObstacleAvoidance() : Node ("obstacle_avoidance"){
            path_pub_= this -> create_publisher<nav_msgs::msg::Path>("/ObstacleAvoidance/PlannerPath", 50);
            auto timer_callback = [this]() -> void {
                std::shared_ptr<ActionServer> action_server_;
                std::cout << "2" << std::endl;
                path = action_server_->get_current_goal()->path;
                path_pub_ = this->create_publisher<nav_msgs::msg::Path>("/ObstacleAvoidance/planner_path", 10);
                path_pub_ -> publish(path);
            };
            timer_ = this ->create_wall_timer(10ms, timer_callback);
        };
        private:
        nav_msgs::msg::Path path;
        rclcpp::Publisher<nav_msgs::msg::Path>::SharedPtr path_pub_;
        rclcpp::TimerBase::SharedPtr timer_;
    };
}