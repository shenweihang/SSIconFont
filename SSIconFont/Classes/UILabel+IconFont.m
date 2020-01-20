//
//  UILabel+IconFont.m
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import "UILabel+IconFont.h"
#import "SSIconFont.h"

@implementation UILabel (IconFont)

+ (UILabel *)ss_iconLabelWithInfo:(SSIconInfo *)iconInfo {
    return [UILabel ss_iconLabelWithText:iconInfo.text color:iconInfo.color size:iconInfo.size];
}

+ (UILabel *)ss_iconLabelWithText:(NSString *)text color:(UIColor *)color size:(CGFloat)size {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = color;
    label.font = [SSIconFont fontWithSize:size];
    return label;
}

- (void)ss_setIconLabelWithInfo:(SSIconInfo *)iconInfo {
    
    [self ss_setIconLabelWithText:iconInfo.text color:iconInfo.color size:iconInfo.size];
}
- (void)ss_setIconLabelWithText:(NSString *)text color:(UIColor *)color size:(CGFloat)size {
    self.text = text;
    self.textColor = color;
    self.font = [SSIconFont fontWithSize:size];
}
@end
