//
//  SZLLadingPage.m
//  ScrollableTabView
//
//  Created by Shidong Ke on 2020/5/21.
//

#import "SZLLadingPage.h"
#import "SZLTapEvent.h"
#import <React/UIView+React.h>

@implementation SZLLadingPage
{
  RCTEventDispatcher *_eventDispatcher;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
  if ((self = [super initWithFrame:CGRectZero])) {
    _eventDispatcher = eventDispatcher;
    
    UITapGestureRecognizer *singleFingerTap =
      [[UITapGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(handleSingleTap:)];
    [self addGestureRecognizer:singleFingerTap];
  }
  return self;
}
// Declare the Gesture Recogniser handler method.
- (void)handleSingleTap:(UITapGestureRecognizer *)gestureRecognizer
{
  NSString *eventName = NSStringFromSelector(@selector(onTap));
  SZLTapEvent *tapEvent = [[SZLTapEvent alloc] initWithEventName:eventName reactTag:self.reactTag tapTotal:@(1)];
  [_eventDispatcher sendEvent:tapEvent];
  NSLog(@"Tapped %@", self.reactTag);
}

@end
