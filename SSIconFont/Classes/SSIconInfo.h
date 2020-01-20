//
//  SSIconInfo.h
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSIconInfo : NSObject

/* 内容 */
@property (nonatomic, copy) NSString *text;
/* 颜色 */
@property (nonatomic, strong) UIColor *color;
/* 大小 */
@property (nonatomic, assign) CGFloat size;

+ (instancetype)infoWithText:(NSString *)text color:(UIColor *)color size:(NSInteger)size;

- (instancetype)initWithText:(NSString *)text color:(UIColor *)color size:(NSInteger)size;

@end

NS_ASSUME_NONNULL_END
