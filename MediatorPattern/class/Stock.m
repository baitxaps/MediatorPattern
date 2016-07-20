//
//  Stock.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "Stock.h"
#import "Purchase.h"
#import "Sale.h"

@interface Stock()

@property (nonatomic ,assign) NSInteger computerNumber ;

@end

@implementation Stock

- (instancetype)init {
    if (self = [super init]) {
        _computerNumber = 100;
    }
    return self;
}

- (void)increase:(NSInteger )number {
    _computerNumber += number;

    NSLog(@"库存数量为:%ld", _computerNumber);
}

- (NSInteger)getStockNumber {
    return _computerNumber;
}

- (void)decrease:(NSInteger)number {
    _computerNumber -= number;
}

- (void)clearStock {
    Purchase *purchase = [Purchase new];
    
    Sale *sale = [Sale new];
    
    NSLog(@"清理存货数量为:%ld",_computerNumber);
    
    // 要求折价销售
    [sale offSale];
    
    // 要求采购人员不要采购
    [purchase refuseBuyIBM];
    
}
@end
