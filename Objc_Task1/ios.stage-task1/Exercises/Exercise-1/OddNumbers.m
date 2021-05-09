//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    __block int countOfOddNumbers = 0;
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger index, BOOL *stop) {
        NSInteger valueOfElement = [array[index] intValue];
            
        if (valueOfElement % 2 != 0) {
                countOfOddNumbers += 1;
            }
         }];
    return countOfOddNumbers;
}

@end
