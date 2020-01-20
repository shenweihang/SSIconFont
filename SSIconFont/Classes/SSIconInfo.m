//
//  SSIconInfo.m
//  SSIconFont
//
//  Created by shenweihang on 2020/1/20.
//

#import "SSIconInfo.h"

@implementation SSIconInfo

+ (instancetype)infoWithText:(NSString *)text color:(UIColor *)color size:(NSInteger)size {
    return [[SSIconInfo alloc] initWithText:text color:color size:size];
}

- (instancetype)initWithText:(NSString *)text color:(UIColor *)color size:(NSInteger)size {

    if (self = [super init]) {
        _text = text;
        _color = color;
        _size = size;
    }
    return self;
}

@end
