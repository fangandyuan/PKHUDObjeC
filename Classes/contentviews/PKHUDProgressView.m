//
//  PKHUDProgressView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDProgressView.h"
#import "PKHUDAssets.h"

@implementation PKHUDProgressView
- (instancetype)init {
    self = [super initWithImage:[UIImage imageNamed:@"progress"]];
    if (self) {
    }

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {

    }

    return self;
}

- (void)commonInitWithImage:(UIImage *)image{
    [super commonInitWithImage:image];

    UIImage *progressImage = [PKHUDAssets progressImage];
    self.imageView.image = progressImage;

    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];

    animation.toValue = [[NSNumber alloc] initWithFloat:2.0 * M_PI];
    animation.duration = 1.2;
    animation.cumulative = YES;
    animation.repeatCount = INT_MAX;
    [self.imageView.layer addAnimation:animation forKey:@"transform.rotation.z"];

    self.imageView.alpha = 0.9;

}


@end

