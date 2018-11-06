//
//  UIImage+MWPhotoBrowser.m
//  Pods
//
//  Created by Michael Waterfall on 05/07/2015.
//
//

#import "UIImage+MWPhotoBrowser.h"

@implementation UIImage (MWPhotoBrowser)

+ (UIImage *)imageForResourcePath:(NSString *)path ofType:(NSString *)type inBundle:(NSBundle *)bundle {
    //NSString *tmp = [bundle pathForResource:path ofType:type];

    bundle = [NSBundle mainBundle];
    NSString *resourcePath = [bundle resourcePath];
    NSString *filePath = [resourcePath stringByAppendingPathComponent:@"PlayButtonOverlayLarge"];

    UIImage *img = [UIImage imageWithContentsOfFile:filePath];


    //UIImage *img = [UIImage imageWithContentsOfFile:[bundle pathForResource:path ofType:type]];

    return img;
}

+ (UIImage *)clearImageWithSize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIImage *blank = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return blank;
}

@end
