#include "ros/ros.h"
#include <iai_ringlight_msgs/iai_ringlight_in.h>

#include <stdio.h>      //printf
#include <string.h>     //strlen
#include <sys/socket.h> //socket
#include <arpa/inet.h>

int sock, sock1;
char message[2], server_reply[65];

bool add(iai_ringlight_msgs::iai_ringlight_in::Request &req,
         iai_ringlight_msgs::iai_ringlight_in::Response &res)
{
    //res.sum = req.a + req.b;
    int x1, y1 = 0;
    bzero(server_reply, sizeof(server_reply));
    //ROS_INFO("request: x=%ld, y=%ld, ", (long int)req.a, (long int)req.b); //'a'=%d   // add "uint8 c" in server
    ROS_INFO("request: x=%ld ", (long int)req.a); //'a'=%d   // add "uint8 c" in server
    ROS_INFO("sending back response: [%ld]", (long int)res.sum);
    x1 = (int)req.a;
    message[0] = x1 + '0'; //message[1]=int(req.b)+'0';
                           //  message[1]=req.c;  bzero(message, sizeof(message));
    puts(message);
    //Send some data
    if (send(sock, message, sizeof(message), 0) < 0) //sizeof(message)
    {
        puts("Send failed_client");
    }
    if (recv(sock, server_reply, 65, 0) < 0)
    {
        puts("recv failed");
    }

    printf("sent it. ");
    puts("Server reply :");
    puts(server_reply);
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "add_two_ints_server");
    ros::NodeHandle n;
    std::string s_ip;
    uint16_t s_sock;
    int sock_no = 3000;     //,s_sock  making int now
    n.getParam("ip", s_ip); //n.getParam("sock_num", s_sock);
                            //n.param("sock_num", s_sock, 3000);
                            //n.param("sock_num",s_sock,sock_no) ;

    struct sockaddr_in server;
    struct sockaddr_in server1; // mnk
    //char message[1000] , server_reply[2000];

    int message1 = 3; // mnk
    bzero(server_reply, sizeof(server_reply));
    bzero(message, sizeof(message));
    //Create socket
    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock == -1)
    {
        printf("Could not create socket");
    }
    puts("Socket created");

    //server.sin_addr.s_addr = inet_addr("10.42.0.181"); //192.168.0.102   //127.0.0.1
    server.sin_addr.s_addr = inet_addr(s_ip.c_str());
    server.sin_family = AF_INET;
    server.sin_port = htons(3000); //8888   //
                                   //server.sin_port = htons( s_sock );
    //Connect to remote server
    if (connect(sock, (struct sockaddr *)&server, sizeof(server)) < 0)
    {
        perror("connect failed to server specified  . Error");
        return 1;
    }
    puts("Connected\n");
    //Receive a reply from the server
    int rlen = recv(sock, server_reply, 65, 0);

    if (rlen < 0)
    {
        puts("recv failed");
        puts(server_reply);
        //break;
    }
    else
    {
        printf("rlen=%d\n", rlen);
        printf("message=%s\n", server_reply);
    }

    ros::ServiceServer service = n.advertiseService("iai_ringlight_controller", add);
    ROS_INFO("Ready to take commands for IAI Ringlight.");
    ros::spin();

    return 0;
}
