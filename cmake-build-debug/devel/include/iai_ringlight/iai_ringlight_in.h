// Generated by gencpp from file iai_ringlight/iai_ringlight_in.msg
// DO NOT EDIT!


#ifndef IAI_RINGLIGHT_MESSAGE_IAI_RINGLIGHT_IN_H
#define IAI_RINGLIGHT_MESSAGE_IAI_RINGLIGHT_IN_H

#include <ros/service_traits.h>


#include <iai_ringlight/iai_ringlight_inRequest.h>
#include <iai_ringlight/iai_ringlight_inResponse.h>


namespace iai_ringlight
{

struct iai_ringlight_in
{

typedef iai_ringlight_inRequest Request;
typedef iai_ringlight_inResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct iai_ringlight_in
} // namespace iai_ringlight


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iai_ringlight::iai_ringlight_in > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::iai_ringlight::iai_ringlight_in&) { return value(); }
};

template<>
struct DataType< ::iai_ringlight::iai_ringlight_in > {
  static const char* value()
  {
    return "iai_ringlight/iai_ringlight_in";
  }

  static const char* value(const ::iai_ringlight::iai_ringlight_in&) { return value(); }
};


// service_traits::MD5Sum< ::iai_ringlight::iai_ringlight_inRequest> should match 
// service_traits::MD5Sum< ::iai_ringlight::iai_ringlight_in > 
template<>
struct MD5Sum< ::iai_ringlight::iai_ringlight_inRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iai_ringlight::iai_ringlight_in >::value();
  }
  static const char* value(const ::iai_ringlight::iai_ringlight_inRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iai_ringlight::iai_ringlight_inRequest> should match 
// service_traits::DataType< ::iai_ringlight::iai_ringlight_in > 
template<>
struct DataType< ::iai_ringlight::iai_ringlight_inRequest>
{
  static const char* value()
  {
    return DataType< ::iai_ringlight::iai_ringlight_in >::value();
  }
  static const char* value(const ::iai_ringlight::iai_ringlight_inRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iai_ringlight::iai_ringlight_inResponse> should match 
// service_traits::MD5Sum< ::iai_ringlight::iai_ringlight_in > 
template<>
struct MD5Sum< ::iai_ringlight::iai_ringlight_inResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iai_ringlight::iai_ringlight_in >::value();
  }
  static const char* value(const ::iai_ringlight::iai_ringlight_inResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iai_ringlight::iai_ringlight_inResponse> should match 
// service_traits::DataType< ::iai_ringlight::iai_ringlight_in > 
template<>
struct DataType< ::iai_ringlight::iai_ringlight_inResponse>
{
  static const char* value()
  {
    return DataType< ::iai_ringlight::iai_ringlight_in >::value();
  }
  static const char* value(const ::iai_ringlight::iai_ringlight_inResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IAI_RINGLIGHT_MESSAGE_IAI_RINGLIGHT_IN_H
