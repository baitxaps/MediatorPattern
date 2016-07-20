//
//  Purchase.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "Purchase.h"
#import "Stock.h"
#import "Sale.h"

@implementation Purchase
- (void)buyIBMcomputer:(NSInteger)number {
    // 访问库存
    Stock *stock = [Stock new];
    
    // 访问销售
    
    Sale *sale = [Sale new];
    
     // 电脑销售情况
    NSInteger saleStatus = [sale getSaleStatus ];
    
    if (saleStatus > 80) {
        NSLog(@"采购IBM电脑:%ld台",number);
        [stock increase:number];
    } else {
        NSInteger buyNumber = number / 2; // 折半采购
         NSLog(@"采购IBM电脑:%ld台",buyNumber);
    }
}

// 不再采购IBM电脑
- (void)refuseBuyIBM {
    NSLog(@"不再采购IBM电脑");
}
@end
