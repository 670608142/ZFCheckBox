//
//  ZFCheckBox.m
//  CheckBoxTableViewDemo
//
//  Created by mac on 2018/7/30.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ZFCheckBox.h"

@interface ZFCheckBox () {
    CAShapeLayer *tickLayer;
}

@end

@implementation ZFCheckBox

#pragma mark - initialize
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置样式
        [self.layer setCornerRadius:3];
        [self.layer setBorderWidth:2];
        tickLayer = [CAShapeLayer layer];
        tickLayer.strokeColor = [UIColor grayColor].CGColor;
        tickLayer.lineWidth = 2;
        //添加点击
        [self addTarget:self action:@selector(onTouchUp:) forControlEvents:UIControlEventTouchUpInside];
        [self addTarget:self action:@selector(onTouchDown:) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self addObserver:self forKeyPath:@"selected" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    }
    return self;
}

#pragma mark - interface
- (void)onClickWithBlock:(onClickCheckBox)onClickBlock {
    if (onClickBlock != nil) {
        _onClickBlock = onClickBlock;
    }
}

- (void)setTickColor:(UIColor *)color {
    tickLayer.strokeColor = color.CGColor;
}

- (void)setTickLineWidth:(CGFloat)width {
    tickLayer.lineWidth = width;
}

- (void)setCornerRadius:(CGFloat)radius {
    [self.layer setCornerRadius:radius];
}

- (void)setBorderWidth:(CGFloat)width {
    [self.layer setBorderWidth:width];
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"selected"]) {
        //监听选择状态的变化，从而改变对钩
        BOOL temp = [change[@"new"] boolValue];
        if (temp) {
            [self TickUp:self.layer];
        } else {
            [tickLayer removeFromSuperlayer];
        }
    }
}

#pragma mark - private
- (void)onTouchUp:(UIButton *)sender {
    [sender setSelected:!sender.isSelected];
    [sender.layer setBackgroundColor:[UIColor whiteColor].CGColor];
}

//设置highlighted效果
- (void)onTouchDown:(UIButton *)sender {
    [sender.layer setBackgroundColor:[UIColor grayColor].CGColor];
}

- (void)onClick {
    if (_onClickBlock) {
        _onClickBlock();
    }
}

//显示对钩的函数
- (void)TickUp:(CALayer *)layer {
    UIBezierPath *tickPath = [UIBezierPath bezierPath];
    [tickPath moveToPoint:CGPointMake(layer.frame.size.width * 0.15, layer.frame.size.height * 0.45)];
    [tickPath addLineToPoint: CGPointMake(layer.frame.size.width * 0.38, layer.frame.size.height * 0.80)];
    [tickPath addLineToPoint: CGPointMake(layer.frame.size.width * 0.85, layer.frame.size.height * 0.15)];
    tickLayer.path = tickPath.CGPath;
    tickLayer.fillColor = [UIColor clearColor].CGColor;
    [layer addSublayer:tickLayer];
}

#pragma mark - dealloc
- (void)dealloc {
    [self removeObserver:self forKeyPath:@"selected"];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
