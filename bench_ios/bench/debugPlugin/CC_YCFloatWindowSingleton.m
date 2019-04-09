//
//  YCFloatWindowSingleton.m
//  testPod
//
//  Created by admin on 2019/4/2.
//  Copyright © 2019 yc. All rights reserved.
//

#import "CC_YCFloatWindowSingleton.h"
#import "CC_YCFloatWindowController.h"

@implementation YCFloatWindowSingleton

+(instancetype)sharedInstance {
    
    static YCFloatWindowSingleton *singleTon = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleTon = [[YCFloatWindowSingleton alloc]init];
    });
    return singleTon;
    
}

- (void)yc_addWindowOnTarget:(id)target {
    //防止外部重复添加
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([target isKindOfClass:[UIViewController class]]) {
            UIViewController *vc = (UIViewController *)target;
            _floatVC = [[YCFloatWindowController alloc]init];
            [vc addChildViewController:_floatVC];
            [vc.view addSubview:_floatVC.view];
            [_floatVC setRootView];
        }else if([target isKindOfClass:[UIWindow class]]){
            UIWindow *win = (UIWindow *)target;
            _floatVC = [[YCFloatWindowController alloc]init];
            [win addSubview:_floatVC.view];
        }
    });
}

//-(void)yc_addWindowOnTarget:(UIViewController *)target onClick:(void (^)())block {
//    _floatVC = [[YCFloatWindowController alloc]init];
//    [target addChildViewController:_floatVC];
//    [target.view addSubview:_floatVC.view];
//    [_floatVC setRootView];
////    _floatWindowCallBack = block;
//}

- (void)yc_setWindowSize:(float)size {
    [_floatVC setWindowSize:size];
}

- (void)yc_setHideWindow:(BOOL)hide {
    [_floatVC setHideWindow:hide];
}

@end
