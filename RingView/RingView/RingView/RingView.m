//
//  RingView.m
//  writeNovel
//
//  Created by HUIXIANG on 2019/8/1.
//  Copyright © 2019 writeNovel. All rights reserved.
//

#import "RingView.h"

@implementation RingView
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self loadUI];
    }
    return self;
}
-(void)loadUI {
    [self loadBaseRing];
    [self loadProgressRing];
}

-(void)loadBaseRing {
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = self.bounds;
    [self.layer addSublayer:layer];
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width/2.0, self.bounds.size.height/2.0) radius:self.bounds.size.width/2.0 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor lightGrayColor].CGColor;
    layer.lineWidth = 2;
    layer.lineCap = kCALineCapRound;
}

-(void)loadProgressRing {
    _player = [CAShapeLayer layer];
    _player.frame = self.bounds;
    [self.layer addSublayer:_player];
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width/2.0, self.bounds.size.height/2.0) radius:self.bounds.size.width/2.0 startAngle:0 endAngle:M_PI * 0.65 clockwise:YES];
    _player.path = path.CGPath;
    UIColor *color = [UIColor orangeColor];
    _player.fillColor = [UIColor clearColor].CGColor;
    _player.strokeColor = color.CGColor;
    _player.lineWidth = 2;
    _player.lineCap = kCALineCapRound;
}
-(void)startAnimation {
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.fromValue = [NSNumber numberWithFloat:0];
    rotationAnimation.toValue = [NSNumber numberWithFloat:2.0*M_PI];
    rotationAnimation.repeatCount = MAXFLOAT;
    rotationAnimation.duration = 1;
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [_player addAnimation:rotationAnimation forKey:@"rotationAnnimation"];
}

-(void)stopAnimation {
    [_player removeAnimationForKey:@"rotationAnnimation"];
}
@end
