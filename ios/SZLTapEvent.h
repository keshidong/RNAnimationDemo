//
//  SZLTapEvent.h
//  ScrollableTabView
//
//  Created by Shidong Ke on 2020/5/21.
//

#import <Foundation/Foundation.h>
#import <React/RCTEventDispatcher.h>

@interface SZLTapEvent : NSObject <RCTEvent>

- (instancetype)initWithEventName:(NSString *)eventName
                         reactTag:(NSNumber *)reactTag
          scrollViewContentOffset:(CGPoint)scrollViewContentOffset
           scrollViewContentInset:(UIEdgeInsets)scrollViewContentInset
            scrollViewContentSize:(CGSize)scrollViewContentSize
                  scrollViewFrame:(CGRect)scrollViewFrame
              scrollViewZoomScale:(CGFloat)scrollViewZoomScale
                         userData:(NSDictionary *)userData
                    coalescingKey:(uint16_t)coalescingKey NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
