//
//  PKHUDTextView.h
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PKHUDWideBaseView.h"

/// Provides a wide, three line text view, which you can use to display information.
@interface PKHUDTextView : PKHUDWideBaseView
@property(nonatomic, strong) UILabel *titleLabel;

- (instancetype)initWithTitle:(NSString *)text;
@end
