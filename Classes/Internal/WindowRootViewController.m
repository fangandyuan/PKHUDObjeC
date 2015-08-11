//
//  WindowRootViewController.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "WindowRootViewController.h"

@implementation WindowRootViewController

- (NSUInteger)supportedInterfaceOrientations {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    if (rootViewController != nil) {
        return rootViewController.supportedInterfaceOrientations;
    }

    return 0;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    if (rootViewController != nil) {
        return rootViewController.preferredStatusBarStyle;
    }
    return UIStatusBarStyleDefault;
}

- (BOOL)prefersStatusBarHidden {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    if (rootViewController != nil) {
        return rootViewController.prefersStatusBarHidden;
    }

    return NO;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    if (rootViewController != nil) {
        return rootViewController.preferredStatusBarUpdateAnimation;
    }

    return UIStatusBarAnimationNone;
}

- (BOOL)shouldAutorotate {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    if (rootViewController != nil) {
        return rootViewController.shouldAutorotate;
    }
    return NO;
}


@end
