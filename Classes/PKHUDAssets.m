//
//  PKHUDAssets.m
//  PKHUD
//
//  Created by djzhang on 8/10/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

#import "PKHUDAssets.h"

@implementation PKHUDAssets


+ (UIImage *)bundledImage:(NSString *)name {
    NSBundle *bundle = [NSBundle bundleForClass:[PKHUDAssets class]];
//
//    NSString *path = [bundle pathForResource:name ofType:nil];
//    UIImage *image = [[UIImage alloc] initWithContentsOfFile:path];
//
//    UIImage *uiImage = [UIImage imageNamed:name];
////    return uiImage;

    UIImage *collection = [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
    return collection;
//    return UIImage(named: name, inBundle:bundle, compatibleWithTraitCollection:nil)!
}

+ (UIImage *)crossImage {
    return [PKHUDAssets bundledImage:@"cross"];
}

+ (UIImage *)checkmarkImage {
    return [PKHUDAssets bundledImage:@"checkmark"];
}

+ (UIImage *)progressImage {
    return [PKHUDAssets bundledImage:@"progress"];
}

@end


//public class var crossImage: UIImage { return PKHUDAssets.bundledImage(named: "cross") }
//public class var checkmarkImage: UIImage { return PKHUDAssets.bundledImage(named: "checkmark") }
//public class var progressImage: UIImage { return PKHUDAssets.bundledImage(named: "progress") }
