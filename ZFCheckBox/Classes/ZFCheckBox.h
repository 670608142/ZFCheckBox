//
//  ZFCheckBox.h
//  CheckBoxTableViewDemo
//
//  Created by mac on 2018/7/30.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^onClickCheckBox)(void);

@interface ZFCheckBox : UIButton

/**
 外部点击事件
 */
@property (nonatomic,copy, setter=onClickWithBlock:) onClickCheckBox onClickBlock;

/**
 设置点击事件

 @param onClickBlock 点击事件的Block
 */
- (void)onClickWithBlock:(onClickCheckBox)onClickBlock;

/**
 设置对钩颜色

 @param color 颜色
 */
- (void)setTickColor:(UIColor *)color;

/**
 设置对钩线宽

 @param width 宽度
 */
- (void)setTickLineWidth:(CGFloat)width;

/**
 设置圆角

 @param radius 角度
 */
- (void)setCornerRadius:(CGFloat)radius;

/**
 设置变宽

 @param width 宽度
 */
- (void)setBorderWidth:(CGFloat)width;

/**
 设置选择状态

 @param selected 是否选中
 */
- (void)setSelected:(BOOL)selected;

/**
 获取选中状态

 @return 返回选中状态
 */
- (BOOL)isSelected;

@end
