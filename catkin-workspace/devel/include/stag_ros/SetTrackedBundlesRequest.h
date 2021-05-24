// Generated by gencpp from file stag_ros/SetTrackedBundlesRequest.msg
// DO NOT EDIT!


#ifndef STAG_ROS_MESSAGE_SETTRACKEDBUNDLESREQUEST_H
#define STAG_ROS_MESSAGE_SETTRACKEDBUNDLESREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace stag_ros
{
template <class ContainerAllocator>
struct SetTrackedBundlesRequest_
{
  typedef SetTrackedBundlesRequest_<ContainerAllocator> Type;

  SetTrackedBundlesRequest_()
    : tracked_bundle_ids()  {
    }
  SetTrackedBundlesRequest_(const ContainerAllocator& _alloc)
    : tracked_bundle_ids(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint64_t, typename ContainerAllocator::template rebind<uint64_t>::other >  _tracked_bundle_ids_type;
  _tracked_bundle_ids_type tracked_bundle_ids;





  typedef boost::shared_ptr< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTrackedBundlesRequest_

typedef ::stag_ros::SetTrackedBundlesRequest_<std::allocator<void> > SetTrackedBundlesRequest;

typedef boost::shared_ptr< ::stag_ros::SetTrackedBundlesRequest > SetTrackedBundlesRequestPtr;
typedef boost::shared_ptr< ::stag_ros::SetTrackedBundlesRequest const> SetTrackedBundlesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator1> & lhs, const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.tracked_bundle_ids == rhs.tracked_bundle_ids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator1> & lhs, const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace stag_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b15701cb380ce0373ed8774b1621b224";
  }

  static const char* value(const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb15701cb380ce037ULL;
  static const uint64_t static_value2 = 0x3ed8774b1621b224ULL;
};

template<class ContainerAllocator>
struct DataType< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stag_ros/SetTrackedBundlesRequest";
  }

  static const char* value(const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64[] tracked_bundle_ids\n"
;
  }

  static const char* value(const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tracked_bundle_ids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTrackedBundlesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stag_ros::SetTrackedBundlesRequest_<ContainerAllocator>& v)
  {
    s << indent << "tracked_bundle_ids[]" << std::endl;
    for (size_t i = 0; i < v.tracked_bundle_ids.size(); ++i)
    {
      s << indent << "  tracked_bundle_ids[" << i << "]: ";
      Printer<uint64_t>::stream(s, indent + "  ", v.tracked_bundle_ids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // STAG_ROS_MESSAGE_SETTRACKEDBUNDLESREQUEST_H