#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number == nil) {
        NSArray *nullArray =@[];
        return nullArray ;
    }
        
    NSMutableArray *finalArray = [[NSMutableArray alloc] init];
    int positiveInt = abs([number intValue]);
    
    while (positiveInt != 0){
        int digitOnly = positiveInt % 10;
        NSString *new = [[NSString alloc] initWithFormat:@"%d", digitOnly];
        [finalArray addObject: new];
        positiveInt /= 10;
        }
        return [finalArray copy];
}

@end
