//
//  PKHUDImageView.h
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PKHUDSquareBaseView.h"

/// Provides a square view, which you can use to display a single image.
@interface PKHUDImageView : PKHUDSquareBaseView

@property(nonatomic, strong) UIImageView *imageView;

- (instancetype)initWithImage:(UIImage *)image;

- (void)commonInitWithImage:(UIImage *)image;

@end
