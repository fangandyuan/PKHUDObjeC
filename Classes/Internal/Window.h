//
//  Window.h
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FrameView;

@interface Window : UIWindow

@property(nonatomic, strong) FrameView *frameView;

@property(nonatomic, strong) UIView *backgroundView;

- (instancetype)initWithFrameView:(FrameView *)frameView;

- (void)showFrameView;

- (void)hideFrameView:(BOOL)anim;

- (void)showBackground:(BOOL)anim;

- (void)hideBackground:(BOOL)anim;
@end
