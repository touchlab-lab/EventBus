//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DeGreenrobotEventEventBus.h"
#include "DeGreenrobotEventTestAbstractEventBusTest.h"
#include "DeGreenrobotEventTestEventBusStickyEventTest.h"
#include "DeGreenrobotEventTestIntTestEvent.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "junit/framework/TestCase.h"
#include "org/junit/Test.h"

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$0();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$1();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$2();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$3();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$4();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$5();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$6();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$7();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$8();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$9();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$10();

__attribute__((unused)) static IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$11();

@interface DeGreenrobotEventTestEventBusStickyEventTest_1 : NSObject {
 @public
  DeGreenrobotEventTestEventBusStickyEventTest *this$0_;
}

- (instancetype)initWithDeGreenrobotEventTestEventBusStickyEventTest:(DeGreenrobotEventTestEventBusStickyEventTest *)outer$;

- (void)onEventWithNSString:(NSString *)event;

@end

J2OBJC_EMPTY_STATIC_INIT(DeGreenrobotEventTestEventBusStickyEventTest_1)

__attribute__((unused)) static void DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(DeGreenrobotEventTestEventBusStickyEventTest_1 *self, DeGreenrobotEventTestEventBusStickyEventTest *outer$);

__attribute__((unused)) static DeGreenrobotEventTestEventBusStickyEventTest_1 *new_DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(DeGreenrobotEventTestEventBusStickyEventTest *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static DeGreenrobotEventTestEventBusStickyEventTest_1 *create_DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(DeGreenrobotEventTestEventBusStickyEventTest *outer$);

@implementation DeGreenrobotEventTestEventBusStickyEventTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventTestEventBusStickyEventTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)testPostSticky {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"Sticky", JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithId_withId_(JavaLangThread_currentThread(), JreLoadVolatileId(&lastThread_));
}

- (void)testPostStickyTwoEvents {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:create_DeGreenrobotEventTestIntTestEvent_initWithInt_(7)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
}

- (void)testPostStickyRegisterNonSticky {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) register__WithId:self];
  JunitFrameworkTestCase_assertNullWithId_(JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
}

- (void)testPostNonStickyRegisterSticky {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"NonSticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertNullWithId_(JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
}

- (void)testPostStickyTwice {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"NewSticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"NewSticky", JreLoadVolatileId(&lastEvent_));
}

- (void)testPostStickyThenPostNormal {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postWithId:@"NonSticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"Sticky", JreLoadVolatileId(&lastEvent_));
}

- (void)testPostStickyWithRegisterAndUnregister {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"Sticky", JreLoadVolatileId(&lastEvent_));
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) unregisterWithId:self];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"Sticky", JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(2, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"NewSticky"];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(3, [eventCount_ intValue]);
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"NewSticky", JreLoadVolatileId(&lastEvent_));
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) unregisterWithId:self];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(4, [eventCount_ intValue]);
  JunitFrameworkTestCase_assertEqualsWithId_withId_(@"NewSticky", JreLoadVolatileId(&lastEvent_));
}

- (void)testPostStickyAndGet {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  JunitFrameworkTestCase_assertEqualsWithNSString_withNSString_(@"Sticky", [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getStickyEventWithIOSClass:NSString_class_()]);
}

- (void)testPostStickyRemoveClass {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) removeStickyEventWithIOSClass:NSString_class_()];
  JunitFrameworkTestCase_assertNullWithId_([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getStickyEventWithIOSClass:NSString_class_()]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertNullWithId_(JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
}

- (void)testPostStickyRemoveEvent {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  JunitFrameworkTestCase_assertTrueWithBoolean_([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) removeStickyEventWithId:@"Sticky"]);
  JunitFrameworkTestCase_assertNullWithId_([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getStickyEventWithIOSClass:NSString_class_()]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertNullWithId_(JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
}

- (void)testPostStickyRemoveAll {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:create_DeGreenrobotEventTestIntTestEvent_initWithInt_(77)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) removeAllStickyEvents];
  JunitFrameworkTestCase_assertNullWithId_([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getStickyEventWithIOSClass:NSString_class_()]);
  JunitFrameworkTestCase_assertNullWithId_([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getStickyEventWithIOSClass:DeGreenrobotEventTestIntTestEvent_class_()]);
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertNullWithId_(JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
}

- (void)testRemoveStickyEventInSubscriber {
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:create_DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(self)];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) postStickyWithId:@"Sticky"];
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) registerStickyWithId:self];
  JunitFrameworkTestCase_assertNullWithId_(JreLoadVolatileId(&lastEvent_));
  JunitFrameworkTestCase_assertEqualsWithInt_withInt_(0, [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(eventCount_)) intValue]);
  JunitFrameworkTestCase_assertNullWithId_([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getStickyEventWithIOSClass:NSString_class_()]);
}

- (void)onEventWithNSString:(NSString *)event {
  [self trackEventWithId:event];
}

- (void)onEventWithDeGreenrobotEventTestIntTestEvent:(DeGreenrobotEventTestIntTestEvent *)event {
  [self trackEventWithId:event];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 2, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 3, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 4, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 5, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 6, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 7, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 8, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 9, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 10, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 11, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 12, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 15, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(testPostSticky);
  methods[2].selector = @selector(testPostStickyTwoEvents);
  methods[3].selector = @selector(testPostStickyRegisterNonSticky);
  methods[4].selector = @selector(testPostNonStickyRegisterSticky);
  methods[5].selector = @selector(testPostStickyTwice);
  methods[6].selector = @selector(testPostStickyThenPostNormal);
  methods[7].selector = @selector(testPostStickyWithRegisterAndUnregister);
  methods[8].selector = @selector(testPostStickyAndGet);
  methods[9].selector = @selector(testPostStickyRemoveClass);
  methods[10].selector = @selector(testPostStickyRemoveEvent);
  methods[11].selector = @selector(testPostStickyRemoveAll);
  methods[12].selector = @selector(testRemoveStickyEventInSubscriber);
  methods[13].selector = @selector(onEventWithNSString:);
  methods[14].selector = @selector(onEventWithDeGreenrobotEventTestIntTestEvent:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangInterruptedException;", (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$0, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$1, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$2, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$3, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$4, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$5, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$6, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$7, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$8, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$9, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$10, (void *)&DeGreenrobotEventTestEventBusStickyEventTest__Annotations$11, "onEvent", "LNSString;", "LDeGreenrobotEventTestIntTestEvent;" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusStickyEventTest = { "EventBusStickyEventTest", "de.greenrobot.event.test", ptrTable, methods, NULL, 7, 0x1, 15, 0, -1, -1, -1, -1, -1 };
  return &_DeGreenrobotEventTestEventBusStickyEventTest;
}

@end

void DeGreenrobotEventTestEventBusStickyEventTest_init(DeGreenrobotEventTestEventBusStickyEventTest *self) {
  DeGreenrobotEventTestAbstractEventBusTest_init(self);
}

DeGreenrobotEventTestEventBusStickyEventTest *new_DeGreenrobotEventTestEventBusStickyEventTest_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusStickyEventTest, init)
}

DeGreenrobotEventTestEventBusStickyEventTest *create_DeGreenrobotEventTestEventBusStickyEventTest_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusStickyEventTest, init)
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$6() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$7() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$8() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$9() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$10() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *DeGreenrobotEventTestEventBusStickyEventTest__Annotations$11() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventTestEventBusStickyEventTest)

@implementation DeGreenrobotEventTestEventBusStickyEventTest_1

- (instancetype)initWithDeGreenrobotEventTestEventBusStickyEventTest:(DeGreenrobotEventTestEventBusStickyEventTest *)outer$ {
  DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(self, outer$);
  return self;
}

- (void)onEventWithNSString:(NSString *)event {
  [((DeGreenrobotEventEventBus *) nil_chk(this$0_->eventBus_)) removeStickyEventWithId:event];
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
  methods[0].selector = @selector(initWithDeGreenrobotEventTestEventBusStickyEventTest:);
  methods[1].selector = @selector(onEventWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LDeGreenrobotEventTestEventBusStickyEventTest;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onEvent", "LNSString;", "LDeGreenrobotEventTestEventBusStickyEventTest;", "testRemoveStickyEventInSubscriber" };
  static const J2ObjcClassInfo _DeGreenrobotEventTestEventBusStickyEventTest_1 = { "", "de.greenrobot.event.test", ptrTable, methods, fields, 7, 0x8018, 2, 1, 2, -1, 3, -1, -1 };
  return &_DeGreenrobotEventTestEventBusStickyEventTest_1;
}

@end

void DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(DeGreenrobotEventTestEventBusStickyEventTest_1 *self, DeGreenrobotEventTestEventBusStickyEventTest *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

DeGreenrobotEventTestEventBusStickyEventTest_1 *new_DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(DeGreenrobotEventTestEventBusStickyEventTest *outer$) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventTestEventBusStickyEventTest_1, initWithDeGreenrobotEventTestEventBusStickyEventTest_, outer$)
}

DeGreenrobotEventTestEventBusStickyEventTest_1 *create_DeGreenrobotEventTestEventBusStickyEventTest_1_initWithDeGreenrobotEventTestEventBusStickyEventTest_(DeGreenrobotEventTestEventBusStickyEventTest *outer$) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventTestEventBusStickyEventTest_1, initWithDeGreenrobotEventTestEventBusStickyEventTest_, outer$)
}
