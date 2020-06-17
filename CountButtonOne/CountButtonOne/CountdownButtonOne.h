//
//  CountdownButtonOne.h
//  CountButtonOne
//
//  Created by zhouzhongliang on 2020/5/17.
//  Copyright © 2020 zhouzhongliang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define BacColor [UIColor colorWithRed:59 / 255.0 green:115 / 255.0 blue:211 / 255.0 alpha:1]
#define SelColor [UIColor lightGrayColor]
#define TitleColor [UIColor whiteColor]

typedef void(^CountingBlock)(void);
typedef void(^CdCompleteBlock)(void);
static CGFloat const countFontSize = 14;

@interface CountdownButtonOne : UIButton

+ (NSTimeInterval)timeIntervalToSecond:(NSInteger)second;

#pragma mark - 验证码倒计时
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title startTime:(NSInteger)startTime tapEvent:(CountingBlock)tapBlock callBack:(CdCompleteBlock)completeBlock;
//直接从某个时间开始倒计时
- (void)startWithTime:(NSInteger)timeCount;

#pragma mark - 天数倒计时
- (instancetype)initWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)textColor font:(UIFont *)font separatorColor:(UIColor *)separatorColor cornerRadius:(CGFloat)cornerRadius leftTime:(NSTimeInterval)leftTime;

#pragma mark - 计时
- (instancetype)initWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor textColor:(UIColor *)textColor font:(UIFont *)font separatorColor:(UIColor *)separatorColor cornerRadius:(CGFloat)cornerRadius;

#pragma mark -  必须在- (void)viewDidDisappear:(BOOL)animated 里停掉计时器
- (void)stopTimer;


@end

NS_ASSUME_NONNULL_END
