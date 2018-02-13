//
//  MAHomeViewModel.m
//  MVVMArchitectureDemo
//
//  Created by gonghonglou on 2018/2/12.
//  Copyright © 2018年 Troy. All rights reserved.
//

#import "MAHomeViewModel.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import "MAHomeTableViewCellVO.h"

@interface MAHomeViewModel ()

@end

@implementation MAHomeViewModel

/**
 逻辑处理，生成数据
 */
- (void)operateDataArray {
    NSMutableArray *mutableArray = [NSMutableArray new];
    for (NSInteger i = 0; i < 10; i++) {
        MAHomeTableViewCellVO *cellVO = [MAHomeTableViewCellVO new];
        cellVO.title = [NSString stringWithFormat:@"title -- %ld", (long)i];
        cellVO.message = [NSString stringWithFormat:@"message -- %ld", (long)i];
        [mutableArray addObject:cellVO];
    }
    self.dataArray = [mutableArray copy];
}

@end
