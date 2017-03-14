//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DeGreenrobotEventEventBus.h"
#include "DeGreenrobotEventEventBusBuilder.h"
#include "DeGreenrobotEventEventBusException.h"
#include "DeGreenrobotEventNoSubscriberEvent.h"
#include "DeGreenrobotEventSubscriberExceptionEvent.h"
#include "DeGreenrobotEventTestAbstractEventBusTest.h"
#include "DeGreenrobotEventTestEventBusBuilderTest.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "junit/framework/TestCase.h"
#include "org/junit/Test.h"

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$0();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$1();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$2();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$3();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$4();

@interface DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker () {
 @public
  DeGreenrobotEventTestEventBusBuilderTest *this$0_;
}

@end

@interface DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker () {
 @public
  DeGreenrobotEventTestEventBusBuilderTest *this$0_;
}

@end

@implementation DeGreenrobotEventTestEventBusBuilderTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusBuilderTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testThrowSubscriberException {
  JreStrongAssign(&eventBus_, [((DeGreenrobotEventEventBusBuilder *) nil_chk([((DeGreenrobotEventEventBusBuilder *) nil_chk(DeGreenrobotEventEventBus_builder())) throwSubscriberExceptionWithBoolean:true])) build]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:create_DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(self)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:create_DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(self)];
  @try {
    [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"Foo"];
    JunitFrameworkTestCase_failWithNSString_(@"Should have thrown");
  }
  @catch (DeGreenrobotEventEventBusException *e) {
  }
}

- (void)testDoNotSendSubscriberExceptionEvent {
  JreStrongAssign(&eventBus_, [((DeGreenrobotEventEventBusBuilder *) nil_chk([((DeGreenrobotEventEventBusBuilder *) nil_chk([((DeGreenrobotEventEventBusBuilder *) nil_chk(DeGreenrobotEventEventBus_builder())) logSubscriberExceptionsWithBoolean:false])) sendSubscriberExceptionEventWithBoolean:false])) build]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:create_DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(self)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:create_DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(self)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"Foo"];
  [self assertEventCountWithInt:0];
}

- (void)testDoNotSendNoSubscriberEvent {
  JreStrongAssign(&eventBus_, [((DeGreenrobotEventEventBusBuilder *) nil_chk([((DeGreenrobotEventEventBusBuilder *) nil_chk([((DeGreenrobotEventEventBusBuilder *) nil_chk(DeGreenrobotEventEventBus_builder())) logNoSubscriberMessagesWithBoolean:false])) sendNoSubscriberEventWithBoolean:false])) build]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:create_DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(self)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"Foo"];
  [self assertEventCountWithInt:0];
}

- (void)testInstallDefaultEventBus {
  DeGreenrobotEventEventBusBuilder *builder = DeGreenrobotEventEventBus_builder();
  @try {
    JreStrongAssign(&eventBus_, [((DeGreenrobotEventEventBusBuilder *) nil_chk(builder)) installDefaultEventBus]);
    JunitFrameworkTestCase_assertEqualsWithId_withId_(eventBus_, DeGreenrobotEventEventBus_getDefault());
    JreStrongAssign(&eventBus_, [builder installDefaultEventBus]);
    JunitFrameworkTestCase_failWithNSString_(@"Should have thrown");
  }
  @catch (DeGreenrobotEventEventBusException *e) {
  }
}

- (void)testEventInheritance {
  JreStrongAssign(&eventBus_, [((DeGreenrobotEventEventBusBuilder *) nil_chk([((DeGreenrobotEventEventBusBuilder *) nil_chk(DeGreenrobotEventEventBus_builder())) eventInheritanceWithBoolean:false])) build]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:create_DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(self)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"Foo"];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 0, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 2, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 3, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, 4, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testThrowSubscriberException);
  methods[2].selector = @selector(testDoNotSendSubscriberExceptionEvent);
  methods[3].selector = @selector(testDoNotSendNoSubscriberEvent);
  methods[4].selector = @selector(testInstallDefaultEventBus);
  methods[5].selector = @selector(testEventInheritance);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { (void *)&DeGreenrobotEventTestEventBusBuilderTest__Annotations$0, (void *)&DeGreenrobotEventTestEventBusBuilderTest__Annotations$1, (void *)&DeGreenrobotEventTestEventBusBuilderTest__Annotations$2, (void *)&DeGreenrobotEventTestEventBusBuilderTest__Annotations$3, (void *)&DeGreenrobotEventTestEventBusBuilderTest__Annotations$4, "LDeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker;LDeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker;LDeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusBuilderTest = { "EventBusBuilderTest", "de.greenrobot.event.test", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, 5, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusBuilderTest;
}

@end

void DeGreenrobotEventTestEventBusBuilderTest_init(DeGreenrobotEventTestEventBusBuilderTest *self) {
  DeGreenrobotEventTestAbstractEventBusTest_init(self);
}

DeGreenrobotEventTestEventBusBuilderTest *new_DeGreenrobotEventTestEventBusBuilderTest_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusBuilderTest, init)
}

DeGreenrobotEventTestEventBusBuilderTest *create_DeGreenrobotEventTestEventBusBuilderTest_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusBuilderTest, init)
}

IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusBuilderTest__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusBuilderTest)

@implementation DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker

- (instancetype)initWithDeGreenrobotEventTestEventBusBuilderTest:(DeGreenrobotEventTestEventBusBuilderTest *)outer$ {
  DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(self, outer$);
  return self;
}

- (void)onEventWithDeGreenrobotEventSubscriberExceptionEvent:(DeGreenrobotEventSubscriberExceptionEvent *)event {
  [this$0_ trackEventWithId:event];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithDeGreenrobotEventTestEventBusBuilderTest:);
  methods[1].selector = @selector(onEventWithDeGreenrobotEventSubscriberExceptionEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LDeGreenrobotEventTestEventBusBuilderTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onEvent", "LDeGreenrobotEventSubscriberExceptionEvent;", "LDeGreenrobotEventTestEventBusBuilderTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker = { "SubscriberExceptionEventTracker", "de.greenrobot.event.test", ptrTable, methods, fields, 7, 0x0, 2, 1, 2, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker;
}

@end

void DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker *self, DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker *new_DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker, initWithDeGreenrobotEventTestEventBusBuilderTest_, outer$)
}

DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker *create_DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker, initWithDeGreenrobotEventTestEventBusBuilderTest_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusBuilderTest_SubscriberExceptionEventTracker)

@implementation DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker

- (instancetype)initWithDeGreenrobotEventTestEventBusBuilderTest:(DeGreenrobotEventTestEventBusBuilderTest *)outer$ {
  DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(self, outer$);
  return self;
}

- (void)onEventWithDeGreenrobotEventNoSubscriberEvent:(DeGreenrobotEventNoSubscriberEvent *)event {
  [this$0_ trackEventWithId:event];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithDeGreenrobotEventTestEventBusBuilderTest:);
  methods[1].selector = @selector(onEventWithDeGreenrobotEventNoSubscriberEvent:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LDeGreenrobotEventTestEventBusBuilderTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onEvent", "LDeGreenrobotEventNoSubscriberEvent;", "LDeGreenrobotEventTestEventBusBuilderTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker = { "NoSubscriberEventTracker", "de.greenrobot.event.test", ptrTable, methods, fields, 7, 0x0, 2, 1, 2, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker;
}

@end

void DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker *self, DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker *new_DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker, initWithDeGreenrobotEventTestEventBusBuilderTest_, outer$)
}

DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker *create_DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker, initWithDeGreenrobotEventTestEventBusBuilderTest_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusBuilderTest_NoSubscriberEventTracker)

@implementation DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber

- (instancetype)initWithDeGreenrobotEventTestEventBusBuilderTest:(DeGreenrobotEventTestEventBusBuilderTest *)outer$ {
  DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(self, outer$);
  return self;
}

- (void)onEventWithId:(id)event {
  @throw create_JavaLangRuntimeException_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithDeGreenrobotEventTestEventBusBuilderTest:);
  methods[1].selector = @selector(onEventWithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onEvent", "LNSObject;", "LDeGreenrobotEventTestEventBusBuilderTest;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber = { "ThrowingSubscriber", "de.greenrobot.event.test", ptrTable, methods, NULL, 7, 0x0, 2, 0, 2, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber;
}

@end

void DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber *self, DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  NSObject_init(self);
}

DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber *new_DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber, initWithDeGreenrobotEventTestEventBusBuilderTest_, outer$)
}

DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber *create_DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber_initWithDeGreenrobotEventTestEventBusBuilderTest_(DeGreenrobotEventTestEventBusBuilderTest *outer$) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber, initWithDeGreenrobotEventTestEventBusBuilderTest_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusBuilderTest_ThrowingSubscriber)
