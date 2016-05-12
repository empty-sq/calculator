//
//  NSObject+Caculator.m
//  Calculator
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import "NSObject+Calculator.h"

@implementation NSObject (Calculator)

+ (int)makeCaculator:(void (^)(CalculatorMaker *))block {
    // 创建计算制造者
    CalculatorMaker *maker = [[CalculatorMaker alloc] init];
    // 计算
    block(maker);
    return maker.result;
}

@end
