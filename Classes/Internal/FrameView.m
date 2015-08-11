//
//  FrameView.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "FrameView.h"

@implementation FrameView

- (instancetype)init {
    self = [super initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    if (self) {
        [self commonInit];
    }

    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }

    return self;
}

- (void)commonInit {
    self.backgroundColor = [[UIColor alloc] initWithWhite:0.8 alpha:0.36];
    self.layer.cornerRadius = 9.0;
    self.layer.masksToBounds = YES;

    [self.contentView addSubview:self.content];

    CGFloat offset = 20.0;

    UIInterpolatingMotionEffect *motionEffectsX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    motionEffectsX.maximumRelativeValue = @(offset);
    motionEffectsX.minimumRelativeValue = @(-offset);

    UIInterpolatingMotionEffect *motionEffectsY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    motionEffectsY.maximumRelativeValue = @(offset);
    motionEffectsY.minimumRelativeValue = @(-offset);


    UIMotionEffectGroup *group = [[UIMotionEffectGroup alloc] init];
    group.motionEffects = @[motionEffectsX, motionEffectsY];

    [self addMotionEffect:group];
}

- (void)setContent:(UIView *)content {
    [self.content removeFromSuperview];

    _content = content;

    self.content.alpha = 0.85;
    self.content.clipsToBounds = YES;
    self.content.contentMode = UIViewContentModeCenter;

    CGRect rect = self.frame;
    rect.size = self.content.bounds.size;
    self.frame = rect;
    
    [self addSubview:self.content];
}

@end
