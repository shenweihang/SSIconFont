//
//  UIImage+IconFont.h
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SSIconInfo;
@interface UIImage (IconFont)

+ (UIImage *)ss_iconImageWithInfo:(SSIconInfo *)info;

+ (UIImage *)ss_iconImageWithText:(NSString *)text color:(UIColor *)color size:(CGFloat)size;

@end

NS_ASSUME_NONNULL_END
