//
//  NSObject+Caculator.h
//  Calculator
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorMaker.h"

@interface NSObject (Calculator)

// 以后计算都使用这个方法，一调用这个方法就返回结果
+ (int)makeCaculator:(void (^)(CalculatorMaker *))block;

@end
