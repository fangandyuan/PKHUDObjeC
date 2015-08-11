//
//  PKHUDTextView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDTextView.h"

@implementation PKHUDTextView


- (instancetype)initWithTitle:(NSString *)text {
    self = [super init];
    if (self) {
        [self makeTitleLabel];
        [self commonInitWithTitle:text];
    }

    return self;
}


- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self makeTitleLabel];
        [self commonInitWithTitle:@""];
    }

    return self;
}


- (void)commonInitWithTitle:(NSString *)text {
    self.titleLabel.text = text;

    [self addSubview:self.titleLabel];
}


- (void)makeTitleLabel {
    self.titleLabel = [[UILabel alloc] init];

    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:17.0];
    self.titleLabel.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.85];

    self.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.titleLabel.numberOfLines = 3;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat padding = 10.0;
    self.titleLabel.frame = CGRectInset(self.bounds, padding, padding);
}


@end


