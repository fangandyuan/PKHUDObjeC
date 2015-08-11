
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import <PKHUDObjC/PKHUD.h>
#import <PKHUDObjC/PKHUDAssets.h>
#import <PKHUDObjC/PKHUDStatusView.h>
#import <PKHUDObjC/PKHUDProgressView.h>
#import <PKHUDObjC/PKHUDImageView.h>
#import <PKHUDObjC/PKHUDSubtitleView.h>
#import <PKHUDObjC/PKHUDSystemActivityIndicatorView.h>
#import <PKHUDObjC/PKHUDTextView.h>
#import <PKHUDObjC/PKHUDTitleView.h>


#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
