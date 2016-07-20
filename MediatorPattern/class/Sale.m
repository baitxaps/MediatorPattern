//
//  Sale.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "Sale.h"
#import "Stock.h"
#import "Purchase.h"

@implementation Sale

//  IBM
- (void)sellIBMComputer:(NSInteger)number {

    Stock *stock = [Stock new];
    //
    Purchase *purchase = [Purchase new];
    
    if([stock getStockNumber]< number){
        
        [purchase buyIBMcomputer:number];
        
        NSLog(@"%ld",number);
        
        [stock decrease:number];

    }
}

- (NSInteger)getSaleStatus {
    
    srand((unsigned)time(NULL));
    
    NSInteger saleStatus = arc4random()%100;
    
    NSLog(@"IBM电脑销售的状态是:%ld",saleStatus);
  
    
    return saleStatus;
}


- (void)offSale {
    Stock *stock = [Stock new];
    NSLog(@"折价销售IBM电脑 %ld 台", [stock getStockNumber]);
}
@end
