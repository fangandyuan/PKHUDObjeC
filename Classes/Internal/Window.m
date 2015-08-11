//
//  Window.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "Window.h"
#import "FrameView.h"
#import "WindowRootViewController.h"

@interface Window ()
//    private var willHide = false
@property(nonatomic) BOOL willHide;
@end

@implementation Window

- (instancetype)init {
    self = [self initWithFrameView:[[FrameView alloc] init]];
    if (self) {

    }

    return self;
}


- (instancetype)initWithFrameView:(FrameView *)frameView {
    self = [super initWithFrame:[UIApplication sharedApplication].delegate.window.bounds];
    if (self) {
        self.frameView = frameView;
        [self commonInit];
    }

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        self.frameView = [[FrameView alloc] init];
        [self commonInit];
    }

    return self;
}


- (void)commonInit {
    self.rootViewController = [[WindowRootViewController alloc] init];
    self.windowLevel = UIWindowLevelNormal + 1.0;
    self.backgroundColor = [UIColor clearColor];

    [self addSubview:[self makeBackgroundView]];
    [self addSubview:self.frameView];
}

- (void)layoutSubviews {
    [super layoutSubviews];

    _frameView.center = self.center;
    _backgroundView.frame = self.bounds;
}

- (void)showFrameView {
    [self.layer removeAllAnimations];
    [self makeKeyAndVisible];

    _frameView.center = self.center;
    self.frameView.alpha = 1.0;
    self.hidden = NO;
}

- (void)hideFrameView:(BOOL)anim {

    void (^completion)(BOOL) = ^(BOOL finished) {
        [self hideFrameViewCompletion:finished];
    };

    if (self.hidden == YES) {
        return;
    }
    self.willHide = YES;
    if (anim == YES) {
        [UIView animateWithDuration:0.8 animations:^{
            _frameView.alpha = 0.0;
        }                completion:completion];
    } else {
        [self hideFrameViewCompletion:YES];
    }

}

- (void)hideFrameViewCompletion:(BOOL)finished {
    if (finished == YES) {
        self.hidden = YES;
        [self resignKeyWindow];
    }
    self.willHide = NO;
}

- (UIView *)makeBackgroundView {
    UIView *view = [[UIView alloc] init];

    view.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.25];
    view.alpha = 0.0;

    return view;
}

- (void)showBackground:(BOOL)anim {
    if (anim == YES) {
        [UIView animateWithDuration:0.175 animations:^{
            _backgroundView.alpha = 1.0;
        }];
    } else {
        _backgroundView.alpha = 1.0;
    }
}

- (void)hideBackground:(BOOL)anim {
    if (anim == YES) {
        [UIView animateWithDuration:0.65 animations:^{
            _backgroundView.alpha = 0.0;
        }];
    } else {
        _backgroundView.alpha = 0.0;
    }
}


@end
