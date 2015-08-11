//
//  PKHUDTitleView.h
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PKHUDImageView.h"

/// Provides a square view, which you can use to display a picture and a title (above the image).
@interface PKHUDTitleView : PKHUDImageView

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image;
@end
