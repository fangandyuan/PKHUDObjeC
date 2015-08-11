//
//  PKHUDSystemActivityIndicatorView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDSystemActivityIndicatorView.h"

@implementation PKHUDSystemActivityIndicatorView
- (instancetype)init {
    self = [super initWithFrame:CGRectMake(0.0, 0.0, 120.0, 120.0)];
    if (self) {
        [self commonInit];
    }

    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {

    }

    return self;
}


- (void)commonInit {
    self.backgroundColor = UIColor.clearColor;
    self.alpha = 0.8;

    UIActivityIndicatorView* activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activity.color = UIColor.blackColor;
    [activity startAnimating];

    [self addSubview:activity];

    activity.center = self.center;
}


@end
