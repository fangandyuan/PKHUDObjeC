//
//  PKHUDSubtitleView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDSubtitleView.h"

@interface PKHUDSubtitleView ()
@property(nonatomic, strong) UILabel *subtitleLabel;
@end

@implementation PKHUDSubtitleView


- (instancetype)initWithSubtitle:(NSString *)subtitle image:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        [self makeSubtitleLabel];
        [self commonInitWithSubtitle:subtitle];
    }

    return self;
}


- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self makeSubtitleLabel];
        [self commonInitWithSubtitle:@""];
    }

    return self;
}

- (void)commonInitWithSubtitle:(NSString *)subtitle {
    self.subtitleLabel.text = subtitle;

    [self addSubview:self.subtitleLabel];
}


- (void)makeSubtitleLabel {
    self.subtitleLabel = [[UILabel alloc] init];

    self.subtitleLabel.textAlignment = NSTextAlignmentCenter;
    self.subtitleLabel.font = [UIFont boldSystemFontOfSize:17.0];
    self.subtitleLabel.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    self.subtitleLabel.adjustsFontSizeToFitWidth = YES;
    self.subtitleLabel.numberOfLines = 2;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat viewWidth = self.bounds.size.width;
    CGFloat viewHeight = self.bounds.size.height;


//    CGFloat halfHeight = ceilf(viewHeight / 2.0);//CGFloat(ceilf(CFloat(viewHeight / 2.0)));
    CGFloat quarterHeight = ceilf(viewHeight / 4.0);// CGFloat(ceilf(CFloat(viewHeight / 4.0)));
    CGFloat threeQuarterHeight = ceilf(viewHeight / 4.0 * 3.0);//CGFloat(ceilf(CFloat(viewHeight / 4.0 * 3.0)));

    CGFloat opticalOffset = 10.0;

    CGRect imageViewRect = {{0.0, opticalOffset}, {viewWidth, threeQuarterHeight - opticalOffset}};
    self.imageView.frame = imageViewRect;

    CGRect subtitleRect = {{0.0, threeQuarterHeight - opticalOffset}, {viewWidth, quarterHeight}};
    self.subtitleLabel.frame = subtitleRect;
}


@end

