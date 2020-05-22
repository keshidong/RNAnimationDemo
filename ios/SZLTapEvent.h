//
//  SZLTapEvent.h
//  ScrollableTabView
//
//  Created by Shidong Ke on 2020/5/21.
//

#import <Foundation/Foundation.h>
#import <React/RCTEventDispatcher.h>

@interface SZLTapEvent : NSObject <RCTEvent>

-(instancetype)initWithEventName:(NSString *)eventName reactTag:(NSNumber *)reactTag tapTotal:(NSNumber *)total;

@end
