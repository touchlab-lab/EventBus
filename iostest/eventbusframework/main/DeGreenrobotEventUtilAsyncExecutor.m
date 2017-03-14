//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DeGreenrobotEventEventBus.h"
#include "DeGreenrobotEventUtilAsyncExecutor.h"
#include "DeGreenrobotEventUtilHasExecutionScope.h"
#include "DeGreenrobotEventUtilThrowableFailureEvent.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/util/Log.h"
#include "java/lang/Exception.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/Runnable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/Constructor.h"
#include "java/util/concurrent/Executor.h"
#include "java/util/concurrent/ExecutorService.h"
#include "java/util/concurrent/Executors.h"

@interface DeGreenrobotEventUtilAsyncExecutor () {
 @public
  id<JavaUtilConcurrentExecutor> threadPool_;
  JavaLangReflectConstructor *failureEventConstructor_;
  DeGreenrobotEventEventBus *eventBus_;
  id scope_;
}

- (instancetype)initWithJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)threadPool
                     withDeGreenrobotEventEventBus:(DeGreenrobotEventEventBus *)eventBus
                                      withIOSClass:(IOSClass *)failureEventType
                                            withId:(id)scope;

@end

J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor, threadPool_, id<JavaUtilConcurrentExecutor>)
J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor, failureEventConstructor_, JavaLangReflectConstructor *)
J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor, eventBus_, DeGreenrobotEventEventBus *)
J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor, scope_, id)

__attribute__((unused)) static void DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(DeGreenrobotEventUtilAsyncExecutor *self, id<JavaUtilConcurrentExecutor> threadPool, DeGreenrobotEventEventBus *eventBus, IOSClass *failureEventType, id scope);

__attribute__((unused)) static DeGreenrobotEventUtilAsyncExecutor *new_DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(id<JavaUtilConcurrentExecutor> threadPool, DeGreenrobotEventEventBus *eventBus, IOSClass *failureEventType, id scope) NS_RETURNS_RETAINED;

__attribute__((unused)) static DeGreenrobotEventUtilAsyncExecutor *create_DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(id<JavaUtilConcurrentExecutor> threadPool, DeGreenrobotEventEventBus *eventBus, IOSClass *failureEventType, id scope);

@interface DeGreenrobotEventUtilAsyncExecutor_Builder () {
 @public
  id<JavaUtilConcurrentExecutor> threadPool_;
  IOSClass *failureEventType_;
  DeGreenrobotEventEventBus *eventBus_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor_Builder, threadPool_, id<JavaUtilConcurrentExecutor>)
J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor_Builder, failureEventType_, IOSClass *)
J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilAsyncExecutor_Builder, eventBus_, DeGreenrobotEventEventBus *)

__attribute__((unused)) static void DeGreenrobotEventUtilAsyncExecutor_Builder_init(DeGreenrobotEventUtilAsyncExecutor_Builder *self);

__attribute__((unused)) static DeGreenrobotEventUtilAsyncExecutor_Builder *new_DeGreenrobotEventUtilAsyncExecutor_Builder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static DeGreenrobotEventUtilAsyncExecutor_Builder *create_DeGreenrobotEventUtilAsyncExecutor_Builder_init();

@interface DeGreenrobotEventUtilAsyncExecutor_RunnableEx : NSObject

@end

@interface DeGreenrobotEventUtilAsyncExecutor_1 : NSObject < JavaLangRunnable > {
 @public
  DeGreenrobotEventUtilAsyncExecutor *this$0_;
  id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> val$runnable_;
}

- (instancetype)initWithDeGreenrobotEventUtilAsyncExecutor:(DeGreenrobotEventUtilAsyncExecutor *)outer$
         withDeGreenrobotEventUtilAsyncExecutor_RunnableEx:(id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx>)capture$0;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(DeGreenrobotEventUtilAsyncExecutor_1)

__attribute__((unused)) static void DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(DeGreenrobotEventUtilAsyncExecutor_1 *self, DeGreenrobotEventUtilAsyncExecutor *outer$, id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> capture$0);

__attribute__((unused)) static DeGreenrobotEventUtilAsyncExecutor_1 *new_DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(DeGreenrobotEventUtilAsyncExecutor *outer$, id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static DeGreenrobotEventUtilAsyncExecutor_1 *create_DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(DeGreenrobotEventUtilAsyncExecutor *outer$, id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> capture$0);

@implementation DeGreenrobotEventUtilAsyncExecutor

+ (DeGreenrobotEventUtilAsyncExecutor_Builder *)builder {
  return DeGreenrobotEventUtilAsyncExecutor_builder();
}

+ (DeGreenrobotEventUtilAsyncExecutor *)create {
  return DeGreenrobotEventUtilAsyncExecutor_create();
}

- (instancetype)initWithJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)threadPool
                     withDeGreenrobotEventEventBus:(DeGreenrobotEventEventBus *)eventBus
                                      withIOSClass:(IOSClass *)failureEventType
                                            withId:(id)scope {
  DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(self, threadPool, eventBus, failureEventType, scope);
  return self;
}

- (void)executeWithDeGreenrobotEventUtilAsyncExecutor_RunnableEx:(id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx>)runnable {
  [((id<JavaUtilConcurrentExecutor>) nil_chk(threadPool_)) executeWithJavaLangRunnable:create_DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(self, runnable)];
}

- (void)dealloc {
  RELEASE_(threadPool_);
  RELEASE_(failureEventConstructor_);
  RELEASE_(eventBus_);
  RELEASE_(scope_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor_Builder;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(builder);
  methods[1].selector = @selector(create);
  methods[2].selector = @selector(initWithJavaUtilConcurrentExecutor:withDeGreenrobotEventEventBus:withIOSClass:withId:);
  methods[3].selector = @selector(executeWithDeGreenrobotEventUtilAsyncExecutor_RunnableEx:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "threadPool_", "LJavaUtilConcurrentExecutor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "failureEventConstructor_", "LJavaLangReflectConstructor;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
    { "eventBus_", "LDeGreenrobotEventEventBus;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "scope_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentExecutor;LDeGreenrobotEventEventBus;LIOSClass;LNSObject;", "(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class<*>;Ljava/lang/Object;)V", "execute", "LDeGreenrobotEventUtilAsyncExecutor_RunnableEx;", "Ljava/lang/reflect/Constructor<*>;", "LDeGreenrobotEventUtilAsyncExecutor_Builder;LDeGreenrobotEventUtilAsyncExecutor_RunnableEx;" };
  static const J2ObjcClassInfo _DeGreenrobotEventUtilAsyncExecutor = { "AsyncExecutor", "de.greenrobot.event.util", ptrTable, methods, fields, 7, 0x1, 4, 4, -1, 5, -1, -1, -1 };
  return &_DeGreenrobotEventUtilAsyncExecutor;
}

@end

DeGreenrobotEventUtilAsyncExecutor_Builder *DeGreenrobotEventUtilAsyncExecutor_builder() {
  DeGreenrobotEventUtilAsyncExecutor_initialize();
  return create_DeGreenrobotEventUtilAsyncExecutor_Builder_init();
}

DeGreenrobotEventUtilAsyncExecutor *DeGreenrobotEventUtilAsyncExecutor_create() {
  DeGreenrobotEventUtilAsyncExecutor_initialize();
  return [create_DeGreenrobotEventUtilAsyncExecutor_Builder_init() build];
}

void DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(DeGreenrobotEventUtilAsyncExecutor *self, id<JavaUtilConcurrentExecutor> threadPool, DeGreenrobotEventEventBus *eventBus, IOSClass *failureEventType, id scope) {
  NSObject_init(self);
  JreStrongAssign(&self->threadPool_, threadPool);
  JreStrongAssign(&self->eventBus_, eventBus);
  JreStrongAssign(&self->scope_, scope);
  @try {
    JreStrongAssign(&self->failureEventConstructor_, [((IOSClass *) nil_chk(failureEventType)) getConstructor:[IOSObjectArray arrayWithObjects:(id[]){ NSException_class_() } count:1 type:IOSClass_class_()]]);
  }
  @catch (JavaLangNoSuchMethodException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(@"Failure event class must have a constructor with one parameter of type Throwable", e);
  }
}

DeGreenrobotEventUtilAsyncExecutor *new_DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(id<JavaUtilConcurrentExecutor> threadPool, DeGreenrobotEventEventBus *eventBus, IOSClass *failureEventType, id scope) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventUtilAsyncExecutor, initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_, threadPool, eventBus, failureEventType, scope)
}

DeGreenrobotEventUtilAsyncExecutor *create_DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(id<JavaUtilConcurrentExecutor> threadPool, DeGreenrobotEventEventBus *eventBus, IOSClass *failureEventType, id scope) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventUtilAsyncExecutor, initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_, threadPool, eventBus, failureEventType, scope)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventUtilAsyncExecutor)

@implementation DeGreenrobotEventUtilAsyncExecutor_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DeGreenrobotEventUtilAsyncExecutor_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (DeGreenrobotEventUtilAsyncExecutor_Builder *)threadPoolWithJavaUtilConcurrentExecutor:(id<JavaUtilConcurrentExecutor>)threadPool {
  JreStrongAssign(&self->threadPool_, threadPool);
  return self;
}

- (DeGreenrobotEventUtilAsyncExecutor_Builder *)failureEventTypeWithIOSClass:(IOSClass *)failureEventType {
  JreStrongAssign(&self->failureEventType_, failureEventType);
  return self;
}

- (DeGreenrobotEventUtilAsyncExecutor_Builder *)eventBusWithDeGreenrobotEventEventBus:(DeGreenrobotEventEventBus *)eventBus {
  JreStrongAssign(&self->eventBus_, eventBus);
  return self;
}

- (DeGreenrobotEventUtilAsyncExecutor *)build {
  return [self buildForScopeWithId:nil];
}

- (DeGreenrobotEventUtilAsyncExecutor *)buildForScopeWithId:(id)executionContext {
  if (eventBus_ == nil) {
    JreStrongAssign(&eventBus_, DeGreenrobotEventEventBus_getDefault());
  }
  if (threadPool_ == nil) {
    JreStrongAssign(&threadPool_, JavaUtilConcurrentExecutors_newCachedThreadPool());
  }
  if (failureEventType_ == nil) {
    JreStrongAssign(&failureEventType_, DeGreenrobotEventUtilThrowableFailureEvent_class_());
  }
  return create_DeGreenrobotEventUtilAsyncExecutor_initWithJavaUtilConcurrentExecutor_withDeGreenrobotEventEventBus_withIOSClass_withId_(threadPool_, eventBus_, failureEventType_, executionContext);
}

- (void)dealloc {
  RELEASE_(threadPool_);
  RELEASE_(failureEventType_);
  RELEASE_(eventBus_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor_Builder;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor_Builder;", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor_Builder;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LDeGreenrobotEventUtilAsyncExecutor;", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(threadPoolWithJavaUtilConcurrentExecutor:);
  methods[2].selector = @selector(failureEventTypeWithIOSClass:);
  methods[3].selector = @selector(eventBusWithDeGreenrobotEventEventBus:);
  methods[4].selector = @selector(build);
  methods[5].selector = @selector(buildForScopeWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "threadPool_", "LJavaUtilConcurrentExecutor;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "failureEventType_", "LIOSClass;", .constantValue.asLong = 0, 0x2, -1, -1, 9, -1 },
    { "eventBus_", "LDeGreenrobotEventEventBus;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "threadPool", "LJavaUtilConcurrentExecutor;", "failureEventType", "LIOSClass;", "(Ljava/lang/Class<*>;)Lde/greenrobot/event/util/AsyncExecutor$Builder;", "eventBus", "LDeGreenrobotEventEventBus;", "buildForScope", "LNSObject;", "Ljava/lang/Class<*>;", "LDeGreenrobotEventUtilAsyncExecutor;" };
  static const J2ObjcClassInfo _DeGreenrobotEventUtilAsyncExecutor_Builder = { "Builder", "de.greenrobot.event.util", ptrTable, methods, fields, 7, 0x9, 6, 3, 10, -1, -1, -1, -1 };
  return &_DeGreenrobotEventUtilAsyncExecutor_Builder;
}

@end

void DeGreenrobotEventUtilAsyncExecutor_Builder_init(DeGreenrobotEventUtilAsyncExecutor_Builder *self) {
  NSObject_init(self);
}

DeGreenrobotEventUtilAsyncExecutor_Builder *new_DeGreenrobotEventUtilAsyncExecutor_Builder_init() {
  J2OBJC_NEW_IMPL(DeGreenrobotEventUtilAsyncExecutor_Builder, init)
}

DeGreenrobotEventUtilAsyncExecutor_Builder *create_DeGreenrobotEventUtilAsyncExecutor_Builder_init() {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventUtilAsyncExecutor_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventUtilAsyncExecutor_Builder)

@implementation DeGreenrobotEventUtilAsyncExecutor_RunnableEx

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(run);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangException;", "LDeGreenrobotEventUtilAsyncExecutor;" };
  static const J2ObjcClassInfo _DeGreenrobotEventUtilAsyncExecutor_RunnableEx = { "RunnableEx", "de.greenrobot.event.util", ptrTable, methods, NULL, 7, 0x609, 1, 0, 1, -1, -1, -1, -1 };
  return &_DeGreenrobotEventUtilAsyncExecutor_RunnableEx;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(DeGreenrobotEventUtilAsyncExecutor_RunnableEx)

@implementation DeGreenrobotEventUtilAsyncExecutor_1

- (instancetype)initWithDeGreenrobotEventUtilAsyncExecutor:(DeGreenrobotEventUtilAsyncExecutor *)outer$
         withDeGreenrobotEventUtilAsyncExecutor_RunnableEx:(id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx>)capture$0 {
  DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(self, outer$, capture$0);
  return self;
}

- (void)run {
  @try {
    [((id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx>) nil_chk(val$runnable_)) run];
  }
  @catch (JavaLangException *e) {
    id event;
    @try {
      event = [((JavaLangReflectConstructor *) nil_chk(this$0_->failureEventConstructor_)) newInstanceWithNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ e } count:1 type:NSObject_class_()]];
    }
    @catch (JavaLangException *e1) {
      AndroidUtilLog_eWithNSString_withNSString_withNSException_(JreLoadStatic(DeGreenrobotEventEventBus, TAG), @"Original exception:", e);
      @throw create_JavaLangRuntimeException_initWithNSString_withNSException_(@"Could not create failure event", e1);
    }
    if ([DeGreenrobotEventUtilHasExecutionScope_class_() isInstance:event]) {
      [((id<DeGreenrobotEventUtilHasExecutionScope>) nil_chk(((id<DeGreenrobotEventUtilHasExecutionScope>) cast_check(event, DeGreenrobotEventUtilHasExecutionScope_class_())))) setExecutionScopeWithId:this$0_->scope_];
    }
    [((DeGreenrobotEventEventBus *) nil_chk(this$0_->eventBus_)) postWithId:event];
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$runnable_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithDeGreenrobotEventUtilAsyncExecutor:withDeGreenrobotEventUtilAsyncExecutor_RunnableEx:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LDeGreenrobotEventUtilAsyncExecutor;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$runnable_", "LDeGreenrobotEventUtilAsyncExecutor_RunnableEx;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LDeGreenrobotEventUtilAsyncExecutor;", "executeWithDeGreenrobotEventUtilAsyncExecutor_RunnableEx:" };
  static const J2ObjcClassInfo _DeGreenrobotEventUtilAsyncExecutor_1 = { "", "de.greenrobot.event.util", ptrTable, methods, fields, 7, 0x8018, 2, 2, 0, -1, 1, -1, -1 };
  return &_DeGreenrobotEventUtilAsyncExecutor_1;
}

@end

void DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(DeGreenrobotEventUtilAsyncExecutor_1 *self, DeGreenrobotEventUtilAsyncExecutor *outer$, id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$runnable_, capture$0);
  NSObject_init(self);
}

DeGreenrobotEventUtilAsyncExecutor_1 *new_DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(DeGreenrobotEventUtilAsyncExecutor *outer$, id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> capture$0) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventUtilAsyncExecutor_1, initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_, outer$, capture$0)
}

DeGreenrobotEventUtilAsyncExecutor_1 *create_DeGreenrobotEventUtilAsyncExecutor_1_initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_(DeGreenrobotEventUtilAsyncExecutor *outer$, id<DeGreenrobotEventUtilAsyncExecutor_RunnableEx> capture$0) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventUtilAsyncExecutor_1, initWithDeGreenrobotEventUtilAsyncExecutor_withDeGreenrobotEventUtilAsyncExecutor_RunnableEx_, outer$, capture$0)
}
