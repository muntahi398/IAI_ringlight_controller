#include "ros/ros.h"
#include <iai_ringlight_msgs/iai_ringlight_in.h>
#include <cstdlib>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "iai_ringlight_client");
    if (argc != 2)
    {
        ROS_INFO("usage: iai_ringlight_in_client X ");
        return -1;
    }

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<iai_ringlight_msgs::iai_ringlight_in>("iai_ringlight_controller");
    iai_ringlight_msgs::iai_ringlight_in srv;
    srv.request.a = atoll(argv[1]);
    if (client.call(srv))
    {
        ROS_INFO("Finished processing client.");
    }
    else
    {
        ROS_ERROR("Failed to call service iai_ringlight_controller");
        return -1;
    }

    return 0;
}
