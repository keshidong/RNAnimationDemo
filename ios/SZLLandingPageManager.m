//
//  SZLLandingPageManager.m
//  ScrollableTabView
//
//  Created by Shidong Ke on 2020/5/19.
//

#import "SZLLandingPageManager.h"
#import "React/RCTBridge.h"
#import "./SZLLadingPage.h"
#import <UIKit/UIKit.h>

@implementation SZLLandingPageManager

RCT_EXPORT_MODULE(SZLLandingPage)

- (UIView *)view
{
  return [[SZLLadingPage alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

//  RCTScrollEvent *scrollEvent = [[RCTScrollEvent alloc] initWithEventName:eventName
//                                                                  reactTag:self.reactTag
//                                                   scrollViewContentOffset:scrollView.contentOffset
//                                                    scrollViewContentInset:scrollView.contentInset
//                                                     scrollViewContentSize:scrollView.contentSize
//                                                           scrollViewFrame:scrollView.frame
//                                                       scrollViewZoomScale:scrollView.zoomScale
//                                                                  userData:userData
//                                                             coalescingKey:_coalescingKey];
//  [self.bridge.eventDispatcher sendEvent:<#(id<RCTEvent>)#>]

@end
