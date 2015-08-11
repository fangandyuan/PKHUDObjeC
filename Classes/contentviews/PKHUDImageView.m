//
//  PKHUDImageView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDImageView.h"

@implementation PKHUDImageView


- (instancetype)initWithImage:(UIImage *)image {
    self = [super init];
    if (self) {
        [self makeImageView];
        [self commonInitWithImage:image];
    }

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self makeImageView];
        [self commonInitWithImage:nil];
    }

    return self;
}

- (void)commonInitWithImage:(UIImage *)image {
    self.imageView.image = image;

    [self addSubview:self.imageView];
}

- (void)layoutSubviews {
    [super layoutSubviews];

    self.imageView.frame = self.bounds;
}

- (void)makeImageView {
    self.imageView = [[UIImageView alloc] init];
    self.imageView.alpha = 0.85;
    self.imageView.clipsToBounds = YES;
    self.imageView.contentMode = UIViewContentModeCenter;
}


@end

