//
//  CaculatorMaker.m
//  Calculator
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import "CalculatorMaker.h"

@implementation CalculatorMaker

//- (instancetype)add:(int)num {
//    _result += num;
//    return self;
//}

/**
 *  相加
 */
- (CalculatorMaker * (^)(int num))add {
    return ^(int num) {
        _result += num;
        return self;
    };
}

/**
 *  相减
 */
- (CalculatorMaker *(^)(int num))subtract {
    return ^(int num) {
        _result -= num;
        return self;
    };
}

/**
 *  相乘
 */
- (CalculatorMaker *(^)(int num))multiply {
    return ^(int num) {
        _result *= num;
        return self;
    };
}

/**
 *  相除
 */
- (CalculatorMaker *(^)(int num))division {
    return ^(int num) {
        _result /= num;
        return self;
    };
}

@end
