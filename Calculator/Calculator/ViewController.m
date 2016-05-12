//
//  ViewController.m
//  Calculator
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorMaker.h"
#import "NSObject+Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1、创建计算制造者
//    CalculatorMaker *maker = [[CalculatorMaker alloc] init];
//    int result = [[[[[maker add:10] add:20] add:30] add:40] result];
//    NSLog(@"result = %@", @(result));
    
    // 链式编程思想：maker.add(10).add(20).add(30).add(40);
    // 提供一个没有参数的add方法，返回值block
    
//    int result = [maker.add(10).add(20).add(30).add(40) result];
//    NSLog(@"result = %@", @(result));
    
    // block: 是代码高聚合
    int result = [NSObject makeCaculator:^(CalculatorMaker *maker) {
        // 把所有的计算代码封装到这里
        maker.add(10).add(20);
        maker.add(30).multiply(10);
    }];
    NSLog(@"result = %@", @(result));
}

/**
 *  之前开发中比较习惯，把事情封装到一个方法中
    链式编程思想：把要做的事情封装到block，给外界提供一个返回这个block的方法
    链式编程思想方法特点：方法返回值必须是block，block参数：放需要操作的内容，block返回值：方法调用者
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
