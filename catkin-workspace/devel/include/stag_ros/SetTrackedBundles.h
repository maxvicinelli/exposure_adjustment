// Generated by gencpp from file stag_ros/SetTrackedBundles.msg
// DO NOT EDIT!


#ifndef STAG_ROS_MESSAGE_SETTRACKEDBUNDLES_H
#define STAG_ROS_MESSAGE_SETTRACKEDBUNDLES_H

#include <ros/service_traits.h>


#include <stag_ros/SetTrackedBundlesRequest.h>
#include <stag_ros/SetTrackedBundlesResponse.h>


namespace stag_ros
{

struct SetTrackedBundles
{

typedef SetTrackedBundlesRequest Request;
typedef SetTrackedBundlesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetTrackedBundles
} // namespace stag_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::stag_ros::SetTrackedBundles > {
  static const char* value()
  {
    return "794fe4f70aaf8e75138989e78d87ef98";
  }

  static const char* value(const ::stag_ros::SetTrackedBundles&) { return value(); }
};

template<>
struct DataType< ::stag_ros::SetTrackedBundles > {
  static const char* value()
  {
    return "stag_ros/SetTrackedBundles";
  }

  static const char* value(const ::stag_ros::SetTrackedBundles&) { return value(); }
};


// service_traits::MD5Sum< ::stag_ros::SetTrackedBundlesRequest> should match
// service_traits::MD5Sum< ::stag_ros::SetTrackedBundles >
template<>
struct MD5Sum< ::stag_ros::SetTrackedBundlesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::stag_ros::SetTrackedBundles >::value();
  }
  static const char* value(const ::stag_ros::SetTrackedBundlesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::stag_ros::SetTrackedBundlesRequest> should match
// service_traits::DataType< ::stag_ros::SetTrackedBundles >
template<>
struct DataType< ::stag_ros::SetTrackedBundlesRequest>
{
  static const char* value()
  {
    return DataType< ::stag_ros::SetTrackedBundles >::value();
  }
  static const char* value(const ::stag_ros::SetTrackedBundlesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::stag_ros::SetTrackedBundlesResponse> should match
// service_traits::MD5Sum< ::stag_ros::SetTrackedBundles >
template<>
struct MD5Sum< ::stag_ros::SetTrackedBundlesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::stag_ros::SetTrackedBundles >::value();
  }
  static const char* value(const ::stag_ros::SetTrackedBundlesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::stag_ros::SetTrackedBundlesResponse> should match
// service_traits::DataType< ::stag_ros::SetTrackedBundles >
template<>
struct DataType< ::stag_ros::SetTrackedBundlesResponse>
{
  static const char* value()
  {
    return DataType< ::stag_ros::SetTrackedBundles >::value();
  }
  static const char* value(const ::stag_ros::SetTrackedBundlesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // STAG_ROS_MESSAGE_SETTRACKEDBUNDLES_H