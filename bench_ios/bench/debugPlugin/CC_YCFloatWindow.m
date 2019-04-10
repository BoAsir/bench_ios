//
//  YCFloatWindow.m
//  testPod
//
//  Created by admin on 2019/4/2.
//  Copyright © 2019 yc. All rights reserved.
//

#import "CC_YCFloatWindow.h"
#import "CC_YCFloatWindowSingleton.h"

@implementation YCFloatWindow

+ (void)yc_addWindowOnTarget:(nonnull id)target{
    [[YCFloatWindowSingleton sharedInstance] yc_addWindowOnTarget:target];
}

//+ (void)yc_addWindowOnTarget:(id)target onClick:(void (^)())callback {
//    [[YCFloatWindowSingleton sharedInstance] yc_addWindowOnTarget:target onClick:callback];
//}

+ (void)yc_setWindowSize:(float)size {
    [[YCFloatWindowSingleton sharedInstance] yc_setWindowSize:size];
}

+ (void)yc_setHideWindow:(BOOL)hide {
    [[YCFloatWindowSingleton sharedInstance] yc_setHideWindow:hide];
}

@end
