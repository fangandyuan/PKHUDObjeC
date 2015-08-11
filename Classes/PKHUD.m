//
//  PKHUD.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUD.h"
#import "Window.h"
#import "FrameView.h"

@interface PKHUD ()
@property(nonatomic, strong) NSTimer *hideTimer;
@property(nonatomic, strong) Window *window;

@end

@implementation PKHUD

+ (PKHUD *)sharedHUD {
    static PKHUD *sharedHUD = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedHUD = [[self alloc] init];
    });
    return sharedHUD;
}


- (instancetype)init {
    self = [super init];
    if (self) {
        self.userInteractionOnUnderlyingViewsEnabled = NO;
        self.window = [[Window alloc] init];
        self.window.frameView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    }

    return self;
}

- (void)hide {
    [self hide:YES];
}

- (void)hide:(BOOL)anim {
    [self.window hideFrameView:anim];
    if (self.dimsBackground == YES) {
        [self.window hideBackground:YES];
    }
}

- (void)show {
    [self.window showFrameView];
    if (self.dimsBackground == true) {
        [self.window showBackground:YES];
    }
}


- (void)setUserInteractionOnUnderlyingViewsEnabled:(BOOL)userInteractionOnUnderlyingViewsEnabled {
    self.window.userInteractionEnabled = !userInteractionOnUnderlyingViewsEnabled;
}

- (BOOL)getUserInteractionOnUnderlyingViewsEnabled {
    return !(self.window.userInteractionEnabled);
}

- (void)setContentView:(UIView *)contentView {
    self.window.frameView.content = contentView;
}

- (UIView *)getContentView {
    return self.window.frameView.content;
}

- (void)hideWithDelay:(NSTimeInterval)delay {
    if (self.hideTimer != nil) {
        if ([self.hideTimer isValid]) {
            [self.hideTimer invalidate];
        }
    }
    self.hideTimer = [NSTimer scheduledTimerWithTimeInterval:delay target:self selector:@selector(hideAnimated:) userInfo:nil repeats:NO];
}

- (void)hideAnimated:(NSTimer *)timer {
    [self hide:YES];
}

@end



