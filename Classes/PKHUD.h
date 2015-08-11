//
//  PKHUD.h
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Window;

/**
HUDController controls showing and hiding of the HUD, as well as its contents and touch response behavior.
*/
@interface PKHUD : NSObject

+ (PKHUD *)sharedHUD;

- (void)show;

- (void)hideWithDelay:(NSTimeInterval)delay;

@property(nonatomic) BOOL dimsBackground;
@property(nonatomic, strong) UIView *contentView;
@property(nonatomic) BOOL userInteractionOnUnderlyingViewsEnabled;

@end

