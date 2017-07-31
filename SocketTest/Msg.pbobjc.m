// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: msg.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Msg.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - MsgRoot

@implementation MsgRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - MsgRoot_FileDescriptor

static GPBFileDescriptor *MsgRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"msg"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Msg1

@implementation Msg1

@dynamic field1;
@dynamic field2;
@dynamic field3;

typedef struct Msg1__storage_ {
  uint32_t _has_storage_[1];
  int32_t field2;
  NSString *field1;
  NSString *field3;
} Msg1__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "field1",
        .dataTypeSpecific.className = NULL,
        .number = Msg1_FieldNumber_Field1,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Msg1__storage_, field1),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "field2",
        .dataTypeSpecific.className = NULL,
        .number = Msg1_FieldNumber_Field2,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Msg1__storage_, field2),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "field3",
        .dataTypeSpecific.className = NULL,
        .number = Msg1_FieldNumber_Field3,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Msg1__storage_, field3),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Msg1 class]
                                     rootClass:[MsgRoot class]
                                          file:MsgRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Msg1__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Msg2

@implementation Msg2

@dynamic field4;
@dynamic field5;
@dynamic field6;

typedef struct Msg2__storage_ {
  uint32_t _has_storage_[1];
  int32_t field4;
  NSString *field5;
  NSString *field6;
} Msg2__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "field4",
        .dataTypeSpecific.className = NULL,
        .number = Msg2_FieldNumber_Field4,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Msg2__storage_, field4),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "field5",
        .dataTypeSpecific.className = NULL,
        .number = Msg2_FieldNumber_Field5,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Msg2__storage_, field5),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "field6",
        .dataTypeSpecific.className = NULL,
        .number = Msg2_FieldNumber_Field6,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Msg2__storage_, field6),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Msg2 class]
                                     rootClass:[MsgRoot class]
                                          file:MsgRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Msg2__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
