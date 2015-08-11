//
//  PKHUDTitleView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDTitleView.h"

@interface PKHUDTitleView ()
@property(nonatomic, strong) UILabel *titleLabel;
@end

@implementation PKHUDTitleView


- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        [self makeTitleLabel];
        [self commonInitWithTitle:title];
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

- (void)commonInitWithTitle:(NSString *)title {
    self.titleLabel.text = title;

    [self addSubview:self.titleLabel];
}


- (void)makeTitleLabel {
    self.titleLabel = [[UILabel alloc] init];

    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:17.0];
    self.titleLabel.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.85];
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat viewWidth = self.bounds.size.width;
    CGFloat viewHeight = self.bounds.size.height;


    CGFloat halfHeight = ceilf(viewHeight / 2.0);//CGFloat(ceilf(CFloat(viewHeight / 2.0)));
    CGFloat quarterHeight = ceilf(viewHeight / 4.0);// CGFloat(ceilf(CFloat(viewHeight / 4.0)));
    CGFloat threeQuarterHeight = ceilf(viewHeight / 4.0 * 3.0);//CGFloat(ceilf(CFloat(viewHeight / 4.0 * 3.0)));

    CGFloat opticalOffset = 10.0;

    CGRect titleLabelRect = {{0.0, opticalOffset}, {viewWidth, quarterHeight}};
    self.titleLabel.frame = titleLabelRect;

    CGRect imageViewRect = {{0.0, quarterHeight - opticalOffset}, {viewWidth, threeQuarterHeight}};
    self.imageView.frame = imageViewRect;
}


@end

