//
//  UIImage+Base64.h
//
//  Copyright © 2016 Alejandro Melo Domínguez. All rights reserved.
//

#import <Foundation/NSString.h>
#import <UIKit/UIImage.h>


// The default data schema to prepend to the actual Base64 encoding
// Default value: @"data:image/png;base64,"
// Another option: @"data:application/octet-stream;base64,"
static NSString * _Nonnull kNSStringBase64SchemaString = @"data:image/png;base64,";


@interface NSString (Base64)

#pragma mark - Class methods
#pragma mark Public
+ (const NSString * _Nonnull)defaultBase64Schema; // Returns kNSStringBase64SchemaString
+ (const NSUInteger)minimumBase64SchemaLength; // The number of characters of kNSStringBase64SchemaString
#pragma mark Private
+ (BOOL)isValidBase64:(NSString * _Nonnull)string;

#pragma mark - Instance methods
- (UIImage * _Nullable)imageFromBase64;
- (BOOL)isValidBase64;

@end
