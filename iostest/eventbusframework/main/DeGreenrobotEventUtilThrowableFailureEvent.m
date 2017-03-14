//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "DeGreenrobotEventUtilThrowableFailureEvent.h"
#include "J2ObjC_source.h"

@interface DeGreenrobotEventUtilThrowableFailureEvent () {
 @public
  id executionContext_;
}

@end

J2OBJC_FIELD_SETTER(DeGreenrobotEventUtilThrowableFailureEvent, executionContext_, id)

@implementation DeGreenrobotEventUtilThrowableFailureEvent

- (instancetype)initWithNSException:(NSException *)throwable {
  DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_(self, throwable);
  return self;
}

- (instancetype)initWithNSException:(NSException *)throwable
                        withBoolean:(jboolean)suppressErrorUi {
  DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_withBoolean_(self, throwable, suppressErrorUi);
  return self;
}

- (NSException *)getThrowable {
  return throwable_;
}

- (jboolean)isSuppressErrorUi {
  return suppressErrorUi_;
}

- (id)getExecutionScope {
  return executionContext_;
}

- (void)setExecutionScopeWithId:(id)executionContext {
  JreStrongAssign(&self->executionContext_, executionContext);
}

- (void)dealloc {
  RELEASE_(throwable_);
  RELEASE_(executionContext_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSException;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSException:);
  methods[1].selector = @selector(initWithNSException:withBoolean:);
  methods[2].selector = @selector(getThrowable);
  methods[3].selector = @selector(isSuppressErrorUi);
  methods[4].selector = @selector(getExecutionScope);
  methods[5].selector = @selector(setExecutionScopeWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "throwable_", "LNSException;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "suppressErrorUi_", "Z", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "executionContext_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSException;", "LNSException;Z", "setExecutionScope", "LNSObject;" };
  static const J2ObjcClassInfo _DeGreenrobotEventUtilThrowableFailureEvent = { "ThrowableFailureEvent", "de.greenrobot.event.util", ptrTable, methods, fields, 7, 0x1, 6, 3, -1, -1, -1, -1, -1 };
  return &_DeGreenrobotEventUtilThrowableFailureEvent;
}

@end

void DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_(DeGreenrobotEventUtilThrowableFailureEvent *self, NSException *throwable) {
  NSObject_init(self);
  JreStrongAssign(&self->throwable_, throwable);
  self->suppressErrorUi_ = false;
}

DeGreenrobotEventUtilThrowableFailureEvent *new_DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_(NSException *throwable) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventUtilThrowableFailureEvent, initWithNSException_, throwable)
}

DeGreenrobotEventUtilThrowableFailureEvent *create_DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_(NSException *throwable) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventUtilThrowableFailureEvent, initWithNSException_, throwable)
}

void DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_withBoolean_(DeGreenrobotEventUtilThrowableFailureEvent *self, NSException *throwable, jboolean suppressErrorUi) {
  NSObject_init(self);
  JreStrongAssign(&self->throwable_, throwable);
  self->suppressErrorUi_ = suppressErrorUi;
}

DeGreenrobotEventUtilThrowableFailureEvent *new_DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_withBoolean_(NSException *throwable, jboolean suppressErrorUi) {
  J2OBJC_NEW_IMPL(DeGreenrobotEventUtilThrowableFailureEvent, initWithNSException_withBoolean_, throwable, suppressErrorUi)
}

DeGreenrobotEventUtilThrowableFailureEvent *create_DeGreenrobotEventUtilThrowableFailureEvent_initWithNSException_withBoolean_(NSException *throwable, jboolean suppressErrorUi) {
  J2OBJC_CREATE_IMPL(DeGreenrobotEventUtilThrowableFailureEvent, initWithNSException_withBoolean_, throwable, suppressErrorUi)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventUtilThrowableFailureEvent)
