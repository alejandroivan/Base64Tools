//
//  UIImage+Base64.m
//
//  Copyright © 2016 Alejandro Melo Domínguez. All rights reserved.
//

#import <Foundation/NSString.h>
#import <UIKit/UIImage.h>

#import "UIImage+Base64.h"
#import "NSString+Base64.h"



@implementation UIImage (Base64)


#pragma mark - Class methods
#pragma mark To UIImage
+ (UIImage * _Nullable)imageWithBase64:(NSString * _Nonnull)base64 {
    return [self imageWithBase64:base64
                           scale:1.0f];
}

+ (UIImage * _Nullable)imageWithBase64:(NSString * _Nonnull)base64 scale:(CGFloat)scale {
    if ( ! ( base64.length > [NSString minimumBase64SchemaLength] ) ) {
#ifdef DEBUG
        NSLog(@"[%@] imageWithBase64:scale: The base64 parameter is too short or nil.", NSStringFromClass(self.class));
#endif
        return nil;
    }
    
    if ( ! [base64 isKindOfClass:[NSString class]] ) {
#ifdef DEBUG
        NSLog(@"[%@] imageWithBase64:scale: The base64 parameter is not a NSString instance.", NSStringFromClass(self.class));
#endif
        return nil;
    }
    
    NSURL *url = [NSURL URLWithString:base64];
    if ( url ) {
        NSError *error;
        NSData *imageData = [NSData dataWithContentsOfURL:url
                                                  options:NSDataReadingMappedIfSafe
                                                    error:&error];
        
        if ( ! error ) {
            return [UIImage imageWithData:imageData
                                    scale:scale];
        }
        
    }
    
    return nil;
}

#pragma mark To Base64
+ (NSString * _Nullable)base64WithImage:(UIImage *_Nonnull)image prependingSchema:(BOOL)prependingSchema {
    if ( ! image ) {
#ifdef DEBUG
        NSLog(@"[%@] base64WithImage:prependingSchema: The image parameter nil.", NSStringFromClass(self.class));
#endif
        return nil;
    }
    
    if ( ! [image isKindOfClass:[UIImage class]] ) {
#ifdef DEBUG
        NSLog(@"[%@] base64WithImage:prependingSchema: The image parameter is not a UIImage instance.", NSStringFromClass(self.class));
#endif
        return nil;
    }
    
    NSData *imageData = UIImagePNGRepresentation(image);
    if ( imageData ) {
        NSString *base64 = [imageData base64EncodedStringWithOptions:kNilOptions];
        
        if ( prependingSchema ) {
            base64 = [[NSString defaultBase64Schema] stringByAppendingString:base64];
        }
        
        return base64;
    }
    
    return nil;
}

+ (NSString * _Nullable)base64WithImage:(UIImage *_Nonnull)image {
    return [self base64WithImage:image
                prependingSchema:YES];
}



#pragma mark - Instance methods

- (NSString * _Nullable)base64 {
    return [UIImage base64WithImage:self];
}
@end
