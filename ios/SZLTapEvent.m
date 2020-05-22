//
//  SZLTapEvent.m
//  ScrollableTabView
//
//  Created by Shidong Ke on 2020/5/21.
//

#import "SZLTapEvent.h"

@implementation SZLTapEvent
{
  NSDictionary *_userData;
  NSNumber *_total;
}

@synthesize viewTag = _viewTag;
@synthesize eventName = _eventName;

-(instancetype)initWithEventName:(NSString *)eventName reactTag:(NSNumber *)reactTag tapTotal:(NSNumber *)total
{
  if ((self = [super init])) {
    _eventName = [eventName copy];
    _viewTag = reactTag;
    _total =total;
  }
  return self;
}

- (BOOL)canCoalesce
{
  return false;
}

- (NSDictionary *)body
{
  return @{
    @"total": _total
  };
}
/** must contain only JSON compatible values */
- (NSArray *)arguments
{
  return @[self.viewTag, RCTNormalizeInputEventName(self.eventName), [self body]];
}

/** used directly for doing a JS call */
+ (NSString *)moduleDotMethod
{
  return @"RCTEventEmitter.receiveEvent";
}

@end
