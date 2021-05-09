#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray<NSNumber *> *finalArray = [NSMutableArray<NSNumber *> new];
        int playerCount;
        
        for (int i = 0; i < [playerArray count]; ++i) {
            playerCount = 1;
            for (int k = 0; k < [rankedArray count]; ++k) {
                if ([playerArray[i] intValue] >= [rankedArray[k] intValue]) {
                    break;
                } else {
                    if (k + 1 == [rankedArray count] || rankedArray[k+1] != rankedArray[k]) {
                        playerCount += 1;
                    }
                }
            }
            [finalArray addObject:[NSNumber numberWithInt:playerCount]];
        }
        
        return finalArray;
    }

@end
