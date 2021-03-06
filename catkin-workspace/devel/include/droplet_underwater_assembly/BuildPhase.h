// Generated by gencpp from file droplet_underwater_assembly/BuildPhase.msg
// DO NOT EDIT!


#ifndef DROPLET_UNDERWATER_ASSEMBLY_MESSAGE_BUILDPHASE_H
#define DROPLET_UNDERWATER_ASSEMBLY_MESSAGE_BUILDPHASE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace droplet_underwater_assembly
{
template <class ContainerAllocator>
struct BuildPhase_
{
  typedef BuildPhase_<ContainerAllocator> Type;

  BuildPhase_()
    : header()
    , current_action()
    , active_build_step()
    , switched_this_frame(false)
    , current_action_is_started(false)
    , current_action_type()
    , current_location()
    , goal_location()
    , move_tolerance()
    , action_sequence_id(0)  {
    }
  BuildPhase_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , current_action(_alloc)
    , active_build_step(_alloc)
    , switched_this_frame(false)
    , current_action_is_started(false)
    , current_action_type(_alloc)
    , current_location(_alloc)
    , goal_location(_alloc)
    , move_tolerance(_alloc)
    , action_sequence_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _current_action_type;
  _current_action_type current_action;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _active_build_step_type;
  _active_build_step_type active_build_step;

   typedef uint8_t _switched_this_frame_type;
  _switched_this_frame_type switched_this_frame;

   typedef uint8_t _current_action_is_started_type;
  _current_action_is_started_type current_action_is_started;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _current_action_type_type;
  _current_action_type_type current_action_type;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _current_location_type;
  _current_location_type current_location;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _goal_location_type;
  _goal_location_type goal_location;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _move_tolerance_type;
  _move_tolerance_type move_tolerance;

   typedef int64_t _action_sequence_id_type;
  _action_sequence_id_type action_sequence_id;





  typedef boost::shared_ptr< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> const> ConstPtr;

}; // struct BuildPhase_

typedef ::droplet_underwater_assembly::BuildPhase_<std::allocator<void> > BuildPhase;

typedef boost::shared_ptr< ::droplet_underwater_assembly::BuildPhase > BuildPhasePtr;
typedef boost::shared_ptr< ::droplet_underwater_assembly::BuildPhase const> BuildPhaseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator1> & lhs, const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.current_action == rhs.current_action &&
    lhs.active_build_step == rhs.active_build_step &&
    lhs.switched_this_frame == rhs.switched_this_frame &&
    lhs.current_action_is_started == rhs.current_action_is_started &&
    lhs.current_action_type == rhs.current_action_type &&
    lhs.current_location == rhs.current_location &&
    lhs.goal_location == rhs.goal_location &&
    lhs.move_tolerance == rhs.move_tolerance &&
    lhs.action_sequence_id == rhs.action_sequence_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator1> & lhs, const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace droplet_underwater_assembly

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08e0913f890f71b7b557d1bae24caa5f";
  }

  static const char* value(const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08e0913f890f71b7ULL;
  static const uint64_t static_value2 = 0xb557d1bae24caa5fULL;
};

template<class ContainerAllocator>
struct DataType< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
{
  static const char* value()
  {
    return "droplet_underwater_assembly/BuildPhase";
  }

  static const char* value(const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string current_action\n"
"string active_build_step\n"
"bool switched_this_frame\n"
"bool current_action_is_started\n"
"string current_action_type\n"
"float64[] current_location\n"
"float64[] goal_location\n"
"float64[] move_tolerance\n"
"int64 action_sequence_id\n"
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

  static const char* value(const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.current_action);
      stream.next(m.active_build_step);
      stream.next(m.switched_this_frame);
      stream.next(m.current_action_is_started);
      stream.next(m.current_action_type);
      stream.next(m.current_location);
      stream.next(m.goal_location);
      stream.next(m.move_tolerance);
      stream.next(m.action_sequence_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BuildPhase_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::droplet_underwater_assembly::BuildPhase_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "current_action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.current_action);
    s << indent << "active_build_step: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.active_build_step);
    s << indent << "switched_this_frame: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.switched_this_frame);
    s << indent << "current_action_is_started: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.current_action_is_started);
    s << indent << "current_action_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.current_action_type);
    s << indent << "current_location[]" << std::endl;
    for (size_t i = 0; i < v.current_location.size(); ++i)
    {
      s << indent << "  current_location[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.current_location[i]);
    }
    s << indent << "goal_location[]" << std::endl;
    for (size_t i = 0; i < v.goal_location.size(); ++i)
    {
      s << indent << "  goal_location[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.goal_location[i]);
    }
    s << indent << "move_tolerance[]" << std::endl;
    for (size_t i = 0; i < v.move_tolerance.size(); ++i)
    {
      s << indent << "  move_tolerance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.move_tolerance[i]);
    }
    s << indent << "action_sequence_id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.action_sequence_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DROPLET_UNDERWATER_ASSEMBLY_MESSAGE_BUILDPHASE_H
