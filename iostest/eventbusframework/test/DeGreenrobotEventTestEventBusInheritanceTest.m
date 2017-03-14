//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DeGreenrobotEventEventBus.h"
#include "DeGreenrobotEventTestEventBusInheritanceTest.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "junit/framework/TestCase.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"

@interface DeGreenrobotEventTestEventBusInheritanceTest () {
 @public
  DeGreenrobotEventEventBus *eventBus_;
  jint countMyEventInterface_;
  jint countMyEventInterfaceExtended_;
}

@end

J2OBJC_FIELD_SETTER(DeGreenrobotEventTestEventBusInheritanceTest, eventBus_, DeGreenrobotEventEventBus *)

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$0();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$1();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$2();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$3();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$4();

@interface DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface : NSObject

@end

@interface DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended : NSObject

@end

@interface DeGreenrobotEventTestEventBusInheritanceTest_1 : NSObject < DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended >

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(DeGreenrobotEventTestEventBusInheritanceTest_1)

__attribute__((unused)) static void DeGreenrobotEventTestEventBusInheritanceTest_1_init(DeGreenrobotEventTestEventBusInheritanceTest_1 *self);

__attribute__((unused)) static DeGreenrobotEventTestEventBusInheritanceTest_1 *new_DeGreenrobotEventTestEventBusInheritanceTest_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static DeGreenrobotEventTestEventBusInheritanceTest_1 *create_DeGreenrobotEventTestEventBusInheritanceTest_1_init();

@interface DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended () {
 @public
  jint countMyEventOverwritten_;
}

@end

@implementation DeGreenrobotEventTestEventBusInheritanceTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusInheritanceTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  [super setUp];
  JreStrongAssignAndConsume(&eventBus_, new_DeGreenrobotEventEventBus_init());
}

- (void)testEventClassHierarchy {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:self];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"Hello"];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countObjectEvent_);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, countObjectEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countMyEvent_);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(3, countObjectEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, countMyEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countMyEventExtended_);
}

- (void)testEventInterfaceHierarchy {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:self];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countMyEventInterface_);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, countMyEventInterface_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countMyEventInterfaceExtended_);
}

- (void)testEventSuperInterfaceHierarchy {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:self];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_1_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countMyEventInterface_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, countMyEventInterfaceExtended_);
}

- (void)testSubscriberClassHierarchy {
  DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended *subscriber = create_DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended_init();
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:subscriber];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"Hello"];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, subscriber->countObjectEvent_);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, subscriber->countObjectEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, subscriber->countMyEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, subscriber->countMyEventOverwritten_);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:create_DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init()];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(3, subscriber->countObjectEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, subscriber->countMyEvent_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(1, subscriber->countMyEventExtended_);
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, subscriber->countMyEventOverwritten_);
}

- (void)onEventWithId:(id)event {
  countObjectEvent_++;
}

- (void)onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEvent:(DeGreenrobotEventTestEventBusInheritanceTest_MyEvent *)event {
  countMyEvent_++;
}

- (void)onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended:(DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended *)event {
  countMyEventExtended_++;
}

- (void)onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface:(id<DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface>)event {
  countMyEventInterface_++;
}

- (void)onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended:(id<DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended>)event {
  countMyEventInterfaceExtended_++;
}

- (void)dealloc {
  RELEASE_(eventBus_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 2, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 3, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 4, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 5, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(testEventClassHierarchy);
  methods[3].selector = @selector(testEventInterfaceHierarchy);
  methods[4].selector = @selector(testEventSuperInterfaceHierarchy);
  methods[5].selector = @selector(testSubscriberClassHierarchy);
  methods[6].selector = @selector(onEventWithId:);
  methods[7].selector = @selector(onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEvent:);
  methods[8].selector = @selector(onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended:);
  methods[9].selector = @selector(onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface:);
  methods[10].selector = @selector(onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "eventBus_", "LDeGreenrobotEventEventBus;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "countMyEventExtended_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "countMyEvent_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "countObjectEvent_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "countMyEventInterface_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "countMyEventInterfaceExtended_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&DeGreenrobotEventTestEventBusInheritanceTest__Annotations$0, (void *)&DeGreenrobotEventTestEventBusInheritanceTest__Annotations$1, (void *)&DeGreenrobotEventTestEventBusInheritanceTest__Annotations$2, (void *)&DeGreenrobotEventTestEventBusInheritanceTest__Annotations$3, (void *)&DeGreenrobotEventTestEventBusInheritanceTest__Annotations$4, "onEvent", "LNSObject;", "LDeGreenrobotEventTestEventBusInheritanceTest_MyEvent;", "LDeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended;", "LDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface;", "LDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended;", "LDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface;LDeGreenrobotEventTestEventBusInheritanceTest_MyEvent;LDeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended;LDeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended;LDeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest = { "EventBusInheritanceTest", "de.greenrobot.event.test", ptrTable, methods, fields, 7, 0x1, 11, 6, -1, 12, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest;
}

@end

void DeGreenrobotEventTestEventBusInheritanceTest_init(DeGreenrobotEventTestEventBusInheritanceTest *self) {
  JunitFrameworkTestCase_init(self);
}

DeGreenrobotEventTestEventBusInheritanceTest *new_DeGreenrobotEventTestEventBusInheritanceTest_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusInheritanceTest, init)
}

DeGreenrobotEventTestEventBusInheritanceTest *create_DeGreenrobotEventTestEventBusInheritanceTest_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusInheritanceTest, init)
}

IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusInheritanceTest__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusInheritanceTest)

@implementation DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { "LDeGreenrobotEventTestEventBusInheritanceTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface = { "MyEventInterface", "de.greenrobot.event.test", ptrTable, NULL, NULL, 7, 0x608, 0, 0, 0, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterface)

@implementation DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { "LDeGreenrobotEventTestEventBusInheritanceTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended = { "MyEventInterfaceExtended", "de.greenrobot.event.test", ptrTable, NULL, NULL, 7, 0x608, 0, 0, 0, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusInheritanceTest_MyEventInterfaceExtended)

@implementation DeGreenrobotEventTestEventBusInheritanceTest_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusInheritanceTest_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LDeGreenrobotEventTestEventBusInheritanceTest;", "testEventSuperInterfaceHierarchy" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest_1 = { "", "de.greenrobot.event.test", ptrTable, methods, NULL, 7, 0x8018, 1, 0, 0, -1, 1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest_1;
}

@end

void DeGreenrobotEventTestEventBusInheritanceTest_1_init(DeGreenrobotEventTestEventBusInheritanceTest_1 *self) {
  NSObject_init(self);
}

DeGreenrobotEventTestEventBusInheritanceTest_1 *new_DeGreenrobotEventTestEventBusInheritanceTest_1_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_1, init)
}

DeGreenrobotEventTestEventBusInheritanceTest_1 *create_DeGreenrobotEventTestEventBusInheritanceTest_1_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_1, init)
}

@implementation DeGreenrobotEventTestEventBusInheritanceTest_MyEvent

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LDeGreenrobotEventTestEventBusInheritanceTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest_MyEvent = { "MyEvent", "de.greenrobot.event.test", ptrTable, methods, NULL, 7, 0x8, 1, 0, 0, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest_MyEvent;
}

@end

void DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init(DeGreenrobotEventTestEventBusInheritanceTest_MyEvent *self) {
  NSObject_init(self);
}

DeGreenrobotEventTestEventBusInheritanceTest_MyEvent *new_DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_MyEvent, init)
}

DeGreenrobotEventTestEventBusInheritanceTest_MyEvent *create_DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_MyEvent, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusInheritanceTest_MyEvent)

@implementation DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LDeGreenrobotEventTestEventBusInheritanceTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended = { "MyEventExtended", "de.greenrobot.event.test", ptrTable, methods, NULL, 7, 0x8, 1, 0, 0, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended;
}

@end

void DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init(DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended *self) {
  DeGreenrobotEventTestEventBusInheritanceTest_MyEvent_init(self);
}

DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended *new_DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended, init)
}

DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended *create_DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusInheritanceTest_MyEventExtended)

@implementation DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEvent:(DeGreenrobotEventTestEventBusInheritanceTest_MyEvent *)event {
  countMyEventOverwritten_++;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(onEventWithDeGreenrobotEventTestEventBusInheritanceTest_MyEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "countMyEventOverwritten_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onEvent", "LDeGreenrobotEventTestEventBusInheritanceTest_MyEvent;", "LDeGreenrobotEventTestEventBusInheritanceTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended = { "SubscriberExtended", "de.greenrobot.event.test", ptrTable, methods, fields, 7, 0x8, 2, 1, 2, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended;
}

@end

void DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended_init(DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended *self) {
  DeGreenrobotEventTestEventBusInheritanceTest_init(self);
}

DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended *new_DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended, init)
}

DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended *create_DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusInheritanceTest_SubscriberExtended)
