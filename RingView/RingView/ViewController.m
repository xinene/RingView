//
//  ViewController.m
//  RingView
//
//  Created by HUIXIANG on 2019/8/1.
//  Copyright © 2019 cn. All rights reserved.
//

#import "ViewController.h"
#import "RingView/RingView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    RingView *ringV = [[RingView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:ringV];
    [ringV startAnimation];
   // [ringV stopAnimation];
}


@end
