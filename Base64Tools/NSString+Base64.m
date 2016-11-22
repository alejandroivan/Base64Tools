//
//  UIImage+Base64.m
//
//  Copyright © 2016 Alejandro Melo Domínguez. All rights reserved.
//

#import <Foundation/NSString.h>
#import <UIKit/UIImage.h>

#import "NSString+Base64.h"
#import "UIImage+Base64.h"


@implementation NSString (Base64)


#pragma mark - Class methods
#pragma mark Public
+ (const NSString * _Nonnull)defaultBase64Schema {
    return kNSStringBase64SchemaString;
}

+ (const NSUInteger)minimumBase64SchemaLength {
    return [[self defaultBase64Schema] length];
}

#pragma mark Private
/*
 Taken from: http://stackoverflow.com/questions/10320186/checking-if-an-nsstring-contains-base64-data
 */
+ (BOOL)isValidBase64:(NSString * _Nonnull)string {
    if ( ! [string isKindOfClass:[NSString class]] ) {
        return NO;
    }
    
    if ( string.length % 4 == 0 ) {
        static NSCharacterSet *invertedBase64CharacterSet = nil;
        
        if ( ! invertedBase64CharacterSet ) {
            invertedBase64CharacterSet = [[NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="] invertedSet];
        }
        
        NSRange rangeOfInvalidCharacters = [string rangeOfCharacterFromSet:invertedBase64CharacterSet
                                                                options:NSLiteralSearch];
        
        return rangeOfInvalidCharacters.location == NSNotFound;
    }
    
    return NO;
}


#pragma mark - Instance methods
- (UIImage * _Nullable)imageFromBase64 {
    if ( ! [self isValidBase64] ) {
        return nil;
    }
    
    return [UIImage imageWithBase64:self];
}

- (BOOL)isValidBase64 {
    return [self.class isValidBase64:self];
}

@end
