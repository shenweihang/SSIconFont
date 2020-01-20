//
//  UILabel+IconFont.h
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SSIconInfo;
@interface UILabel (IconFont)

+ (UILabel *)ss_iconLabelWithInfo:(SSIconInfo *)iconInfo;
+ (UILabel *)ss_iconLabelWithText:(NSString *)text color:(UIColor *)color size:(CGFloat)size;

- (void)ss_setIconLabelWithInfo:(SSIconInfo *)iconInfo;
- (void)ss_setIconLabelWithText:(NSString *)text color:(UIColor *)color size:(CGFloat)size;

@end

NS_ASSUME_NONNULL_END
