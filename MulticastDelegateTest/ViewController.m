//
//  ViewController.m
//  MulticastDelegateTest
//
//  Created by zcx on 17/2/24.
//  Copyright © 2017年 zcx. All rights reserved.
//

#import "ViewController.h"
#import "GCDMulticastDelegate.h"
#import "MyTestProtocol.h"
#import "Object1.h"
#import "Object2.h"

@interface ViewController () {
    GCDMulticastDelegate<MyTestProtocol> *multicastDelegate;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    multicastDelegate = (GCDMulticastDelegate<MyTestProtocol> *)[GCDMulticastDelegate new];
    Object1* object1 = [Object1 new];
    Object2* object2 = [Object2 new];
    
    [multicastDelegate addDelegate:object1 delegateQueue:dispatch_get_main_queue()];
    [multicastDelegate addDelegate:object2 delegateQueue:dispatch_get_main_queue()];

    [multicastDelegate test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
