// Generated by gencpp from file stag_ros/StagMarker.msg
// DO NOT EDIT!


#ifndef STAG_ROS_MESSAGE_STAGMARKER_H
#define STAG_ROS_MESSAGE_STAGMARKER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Point.h>

namespace stag_ros
{
template <class ContainerAllocator>
struct StagMarker_
{
  typedef StagMarker_<ContainerAllocator> Type;

  StagMarker_()
    : header()
    , id(0)
    , reprojection_error(0.0)
    , pose()
    , corners()  {
    }
  StagMarker_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(0)
    , reprojection_error(0.0)
    , pose(_alloc)
    , corners(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _id_type;
  _id_type id;

   typedef float _reprojection_error_type;
  _reprojection_error_type reprojection_error;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _corners_type;
  _corners_type corners;





  typedef boost::shared_ptr< ::stag_ros::StagMarker_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stag_ros::StagMarker_<ContainerAllocator> const> ConstPtr;

}; // struct StagMarker_

typedef ::stag_ros::StagMarker_<std::allocator<void> > StagMarker;

typedef boost::shared_ptr< ::stag_ros::StagMarker > StagMarkerPtr;
typedef boost::shared_ptr< ::stag_ros::StagMarker const> StagMarkerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stag_ros::StagMarker_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stag_ros::StagMarker_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::stag_ros::StagMarker_<ContainerAllocator1> & lhs, const ::stag_ros::StagMarker_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.id == rhs.id &&
    lhs.reprojection_error == rhs.reprojection_error &&
    lhs.pose == rhs.pose &&
    lhs.corners == rhs.corners;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::stag_ros::StagMarker_<ContainerAllocator1> & lhs, const ::stag_ros::StagMarker_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace stag_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::stag_ros::StagMarker_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stag_ros::StagMarker_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stag_ros::StagMarker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stag_ros::StagMarker_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stag_ros::StagMarker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stag_ros::StagMarker_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stag_ros::StagMarker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00ade0ee9b01784a8c499cd42ed70d9f";
  }

  static const char* value(const ::stag_ros::StagMarker_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00ade0ee9b01784aULL;
  static const uint64_t static_value2 = 0x8c499cd42ed70d9fULL;
};

template<class ContainerAllocator>
struct DataType< ::stag_ros::StagMarker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stag_ros/StagMarker";
  }

  static const char* value(const ::stag_ros::StagMarker_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stag_ros::StagMarker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint32 id\n"
"float32 reprojection_error # sum of the squared reprojection error of each corner\n"
"geometry_msgs/PoseStamped pose # pose from solvePnP\n"
"geometry_msgs/Point[] corners # corners from marker detection in image coordinates\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::stag_ros::StagMarker_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stag_ros::StagMarker_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.reprojection_error);
      stream.next(m.pose);
      stream.next(m.corners);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StagMarker_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stag_ros::StagMarker_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stag_ros::StagMarker_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "reprojection_error: ";
    Printer<float>::stream(s, indent + "  ", v.reprojection_error);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "corners[]" << std::endl;
    for (size_t i = 0; i < v.corners.size(); ++i)
    {
      s << indent << "  corners[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.corners[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // STAG_ROS_MESSAGE_STAGMARKER_H
