//
//  CaculatorMaker.h
//  Calculator
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//  计算器

#import <Foundation/Foundation.h>

@interface CalculatorMaker : NSObject

@property (nonatomic, assign) int result;

/** 相加 */
//- (instancetype)add:(int)num;
- (CalculatorMaker *(^)(int num))add;

/** 相减 */
- (CalculatorMaker *(^)(int num))subtract;

/** 相乘 */
- (CalculatorMaker *(^)(int num))multiply;

/** 相除 */
- (CalculatorMaker *(^)(int num))division;

@end
