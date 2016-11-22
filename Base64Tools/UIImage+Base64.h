//
//  UIImage+Base64.h
//
//  Copyright © 2016 Alejandro Melo Domínguez. All rights reserved.
//

#import <Foundation/NSString.h>
#import <UIKit/UIImage.h>

@interface UIImage (Base64)

#pragma mark - Class methods
#pragma mark To UIImage
+ (UIImage * _Nullable)imageWithBase64:(NSString * _Nonnull)base64;
+ (UIImage * _Nullable)imageWithBase64:(NSString * _Nonnull)base64 scale:(CGFloat)scale;
#pragma mark To Base64
+ (NSString * _Nullable)base64WithImage:(UIImage * _Nonnull)image;
+ (NSString * _Nullable)base64WithImage:(UIImage * _Nonnull)image prependingSchema:(BOOL)prependingSchema;

#pragma mark - Instance methods
- (NSString * _Nullable)base64;

@end
