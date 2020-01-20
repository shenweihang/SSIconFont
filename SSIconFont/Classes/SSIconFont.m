//
//  SSIconFont.m
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import "SSIconFont.h"
#import <CoreText/CoreText.h>

static NSString *iconFontName = @"iconfont";

@implementation SSIconFont

+ (UIFont *)fontWithSize:(CGFloat)size {
    
    UIFont *font = [UIFont fontWithName:iconFontName size:size];
    if (!font) {
        NSURL *fontFileUrl = [[NSBundle mainBundle] URLForResource:iconFontName withExtension:@"ttf"];
        [self registerFontWithURL:fontFileUrl];
        font = [UIFont fontWithName:iconFontName size:size];
    }
    return font;
}

+ (void)registerFontWithURL:(NSURL *)url {
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:[url path]]) {
        return;
    }
    CGDataProviderRef fontDataProvider = CGDataProviderCreateWithURL((__bridge CFURLRef)url);
    CGFontRef newFont = CGFontCreateWithDataProvider(fontDataProvider);
    CGDataProviderRelease(fontDataProvider);
    CTFontManagerRegisterGraphicsFont(newFont, nil);
    CGFontRelease(newFont);
}

+ (void)setFontName:(NSString *)fontName {
    iconFontName = fontName;
}

@end
