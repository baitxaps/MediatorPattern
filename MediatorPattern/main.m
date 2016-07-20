//
//  main.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Purchase.h"
#import "Sale.h"
#import "Stock.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Purchase *purchase = [Purchase new];
        [purchase buyIBMcomputer :100];
        
        Sale *sale = [Sale new];
        [sale sellIBMComputer:1];
        
        Stock *stock = [Stock new];
        [stock clearStock];
    }
    return 0;
}
