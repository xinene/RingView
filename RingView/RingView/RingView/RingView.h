//
//  RingView.h
//  writeNovel
//
//  Created by HUIXIANG on 2019/8/1.
//  Copyright © 2019 writeNovel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RingView : UIView {
    CAShapeLayer *_player;
}
-(void)startAnimation;
-(void)stopAnimation;
@end

NS_ASSUME_NONNULL_END
