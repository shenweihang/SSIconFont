//
//  UIImage+IconFont.m
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import "UIImage+IconFont.h"
#import <CoreText/CoreText.h>
#import "SSIconFont.h"

@implementation UIImage (IconFont)

+ (UIImage *)ss_iconImageWithInfo:(SSIconInfo *)info {
    return [UIImage ss_iconImageWithText:info.text color:info.color size:info.size];
}

+ (UIImage *)ss_iconImageWithText:(NSString *)text color:(UIColor *)color size:(CGFloat)size {
        CGFloat scale = [UIScreen mainScreen].scale;
        CGFloat realSize = size * scale;
        UIFont *font = [SSIconFont fontWithSize:realSize];
        UIGraphicsBeginImageContext(CGSizeMake(realSize, realSize));
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        if ([text respondsToSelector:@selector(drawAtPoint:withAttributes:)] && font) {
            /**
             * 如果这里抛出异常，请打开断点列表，右击All Exceptions -> Edit Breakpoint -> All修改为Objective-C
             * See: http://stackoverflow.com/questions/1163981/how-to-add-a-breakpoint-to-objc-exception-throw/14767076#14767076
             */
            [text drawAtPoint:CGPointZero withAttributes:@{NSFontAttributeName:font, NSForegroundColorAttributeName: color}];
        } else {
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Wdeprecated-declarations"
            CGContextSetFillColorWithColor(context, color.CGColor);
            [text drawAtPoint:CGPointMake(0, 0) withFont:font];
    #pragma clang pop
        }
        
        UIImage *image = [UIImage imageWithCGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage scale:scale orientation:UIImageOrientationUp];
        UIGraphicsEndImageContext();
        
        return image;
}
@end
