//
//  PKHUDSubtitleView.h
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PKHUDImageView.h"

/// Provides a square view, which you can use to display a picture and a subtitle (beneath the image).
@interface PKHUDSubtitleView : PKHUDImageView

- (instancetype)initWithSubtitle:(NSString *)subtitle image:(UIImage *)image;
@end
