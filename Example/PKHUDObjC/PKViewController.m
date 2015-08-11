//
//  PKViewController.m
//  PKHUDObjC
//
//  Created by trujun zhang on 08/11/2015.
//  Copyright (c) 2015 trujun zhang. All rights reserved.
//


#import <PKHUDObjC/PKHUDObjC.h>
#import "PKViewController.h"


@interface PKViewController ()

@end

@implementation PKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [PKHUD sharedHUD].dimsBackground = NO;
    [PKHUD sharedHUD].userInteractionOnUnderlyingViewsEnabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showStatusHUD:(id)sender {
    [PKHUD sharedHUD].contentView = [[PKHUDStatusView alloc] initWithTitle:@"Success" subtitle:@"Subtitle" image:[PKHUDAssets checkmarkImage]];
    [[PKHUD sharedHUD] show];
    [[PKHUD sharedHUD] hideWithDelay:2.0];
}


- (IBAction)showProgressHUD:(id)sender {
    [PKHUD sharedHUD].contentView = [[PKHUDProgressView alloc] init];
    [[PKHUD sharedHUD] show];
    [[PKHUD sharedHUD] hideWithDelay:2.0];
}

- (IBAction)showAppleProgressHUD:(id)sender {
    [PKHUD sharedHUD].contentView = [[PKHUDSystemActivityIndicatorView alloc] init];
    [[PKHUD sharedHUD] show];
    [[PKHUD sharedHUD] hideWithDelay:2.0];
}

- (IBAction)showTitleHUD:(id)sender {
    [PKHUD sharedHUD].contentView = [[PKHUDTitleView alloc] initWithTitle:@"Success" image:[PKHUDAssets checkmarkImage]];
    [[PKHUD sharedHUD] show];
    [[PKHUD sharedHUD] hideWithDelay:2.0];
}

- (IBAction)showSubtitleHUD:(id)sender {
    [PKHUD sharedHUD].contentView = [[PKHUDSubtitleView alloc] initWithSubtitle:@"Error" image:[PKHUDAssets crossImage]];
    [[PKHUD sharedHUD] show];
    [[PKHUD sharedHUD] hideWithDelay:2.0];
}

- (IBAction)showTextHUD:(id)sender {
    [PKHUD sharedHUD].contentView = [[PKHUDTextView alloc] initWithTitle:@"Requesting Licence…"];
    [[PKHUD sharedHUD] show];
    [[PKHUD sharedHUD] hideWithDelay:2.0];
}


- (IBAction)showAlertWithHUD:(id)sender {
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0") == YES) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"An Alert" message:@"With an Extraordinary Message" preferredStyle:UIAlertControllerStyleAlert];
        [alertController addAction:[UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alertController animated:YES completion:nil];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"An Alert"
                                                        message:@"With an Extraordinary Message"
                                                       delegate:self
                                              cancelButtonTitle:@"Dismiss"
                                              otherButtonTitles:nil];
        [alert show];
    }


    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showTitleHUD:sender];
    });

}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


@end

