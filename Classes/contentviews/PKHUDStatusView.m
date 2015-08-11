//
//  PKHUDStatusView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDStatusView.h"

@implementation PKHUDStatusView


- (instancetype)initWithTitle:(NSString *)title subtitle:(NSString *)subtitle image:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        [self makeTitleLabel];
        [self makeSubtitleLabel];
        [self commonInit:title subtitle:subtitle];
    }

    return self;
}


- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self makeTitleLabel];
        [self makeSubtitleLabel];
        [self commonInit:@"" subtitle:@""];
    }

    return self;
}


- (void)commonInit:(NSString *)title subtitle:(NSString *)subtitle {

    self.titleLabel.text = title;
    self.subtitleLabel.text = subtitle;

    [self addSubview:self.titleLabel];
    [self addSubview:self.subtitleLabel];
}


- (void)makeTitleLabel {
    self.titleLabel = [[UILabel alloc] init];

    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:17.0];
    self.titleLabel.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.85];
}

- (void)makeSubtitleLabel {
    self.subtitleLabel = [[UILabel alloc] init];

    self.subtitleLabel.textAlignment = NSTextAlignmentCenter;
    self.subtitleLabel.font = [UIFont boldSystemFontOfSize:14.0];
    self.subtitleLabel.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    self.subtitleLabel.adjustsFontSizeToFitWidth = YES;
    self.subtitleLabel.numberOfLines = 2;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat viewWidth = self.bounds.size.width;
    CGFloat viewHeight = self.bounds.size.height;


    CGFloat halfHeight = ceilf(viewHeight / 2.0);//CGFloat(ceilf(CFloat(viewHeight / 2.0)));
    CGFloat quarterHeight = ceilf(viewHeight / 4.0);// CGFloat(ceilf(CFloat(viewHeight / 4.0)));
    CGFloat threeQuarterHeight = ceilf(viewHeight / 4.0 * 3.0);//CGFloat(ceilf(CFloat(viewHeight / 4.0 * 3.0)));

    CGRect titleLabelRect = {CGPointZero, {viewWidth, quarterHeight}};
    self.titleLabel.frame = titleLabelRect;

    CGRect imageViewRect = {{0.0, quarterHeight}, {viewWidth, halfHeight}};
    self.imageView.frame = imageViewRect;

    CGRect subtitleRect = {{0.0, threeQuarterHeight}, {viewWidth, quarterHeight}};
    self.subtitleLabel.frame = subtitleRect;
}


@end




