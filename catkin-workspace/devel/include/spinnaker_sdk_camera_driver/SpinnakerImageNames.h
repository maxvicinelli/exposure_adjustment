// Generated by gencpp from file spinnaker_sdk_camera_driver/SpinnakerImageNames.msg
// DO NOT EDIT!


#ifndef SPINNAKER_SDK_CAMERA_DRIVER_MESSAGE_SPINNAKERIMAGENAMES_H
#define SPINNAKER_SDK_CAMERA_DRIVER_MESSAGE_SPINNAKERIMAGENAMES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace spinnaker_sdk_camera_driver
{
template <class ContainerAllocator>
struct SpinnakerImageNames_
{
  typedef SpinnakerImageNames_<ContainerAllocator> Type;

  SpinnakerImageNames_()
    : header()
    , name()
    , time()  {
    }
  SpinnakerImageNames_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , time()  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef ros::Time _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> const> ConstPtr;

}; // struct SpinnakerImageNames_

typedef ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<std::allocator<void> > SpinnakerImageNames;

typedef boost::shared_ptr< ::spinnaker_sdk_camera_driver::SpinnakerImageNames > SpinnakerImageNamesPtr;
typedef boost::shared_ptr< ::spinnaker_sdk_camera_driver::SpinnakerImageNames const> SpinnakerImageNamesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator1> & lhs, const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.name == rhs.name &&
    lhs.time == rhs.time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator1> & lhs, const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace spinnaker_sdk_camera_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e118cce7e10bceec739777176ef69931";
  }

  static const char* value(const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe118cce7e10bceecULL;
  static const uint64_t static_value2 = 0x739777176ef69931ULL;
};

template<class ContainerAllocator>
struct DataType< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spinnaker_sdk_camera_driver/SpinnakerImageNames";
  }

  static const char* value(const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header      header\n"
"string[]    name\n"
"time        time\n"
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
;
  }

  static const char* value(const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpinnakerImageNames_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spinnaker_sdk_camera_driver::SpinnakerImageNames_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPINNAKER_SDK_CAMERA_DRIVER_MESSAGE_SPINNAKERIMAGENAMES_H