//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "AllTests.h"
#include "J2ObjC_source.h"
#include "UiTester.h"
#include "java/lang/Thread.h"

@interface UiTester_1 : JavaLangThread

- (instancetype)init;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(UiTester_1)

__attribute__((unused)) static void UiTester_1_init(UiTester_1 *self);

__attribute__((unused)) static UiTester_1 *new_UiTester_1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static UiTester_1 *create_UiTester_1_init();

@implementation UiTester

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  UiTester_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)runTests {
  UiTester_runTests();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(runTests);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _UiTester = { "UiTester", NULL, NULL, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_UiTester;
}

@end

void UiTester_init(UiTester *self) {
  NSObject_init(self);
}

UiTester *new_UiTester_init() {
  J2OBJC_NEW_IMPL(UiTester, init)
}

UiTester *create_UiTester_init() {
  J2OBJC_CREATE_IMPL(UiTester, init)
}

void UiTester_runTests() {
  UiTester_initialize();
  [create_UiTester_1_init() start];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(UiTester)

@implementation UiTester_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  UiTester_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)run {
  AllTests_runAllTests();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LUiTester;", "runTests" };
  static const J2ObjcClassInfo _UiTester_1 = { "", NULL, ptrTable, methods, NULL, 7, 0x8018, 2, 0, 0, -1, 1, -1, -1 };
  return &_UiTester_1;
}

@end

void UiTester_1_init(UiTester_1 *self) {
  JavaLangThread_init(self);
}

UiTester_1 *new_UiTester_1_init() {
  J2OBJC_NEW_IMPL(UiTester_1, init)
}

UiTester_1 *create_UiTester_1_init() {
  J2OBJC_CREATE_IMPL(UiTester_1, init)
}
