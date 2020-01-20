//
//  SSIconFont.h
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import <Foundation/Foundation.h>
#import "SSIconInfo.h"
#import "UILabel+IconFont.h"
#import "UIImage+IconFont.h"

NS_ASSUME_NONNULL_BEGIN

#define SSIconInfoMake(txt, fColor, fSize) [SSIconInfo infoWithText:txt color:fColor size:fSize]
//icon label 生成宏
#define SSIconLabelMake(txt, fColor, fSize) [UILabel ss_iconLabelWithText:txt color:fColor size:fSize]
//icon image 生成宏
#define SSIconImageMake(txt, fColor, fSize) [UIImage ss_iconImageWithText:txt color:fColor size:fSize]

@interface SSIconFont : NSObject

+ (UIFont *)fontWithSize:(CGFloat)size;

+ (void)setFontName:(NSString *)fontName;

@end

NS_ASSUME_NONNULL_END
