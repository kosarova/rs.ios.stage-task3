#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    int result = 0;
      
      if (ratingArray == nil || ratingArray.count < 3) {
          return result;
      }
      
      for (int i = 0; i < [ratingArray count] - 2; i++) {
          for (int j = i; j < [ratingArray count] - 1; j++) {
              for (int k = j; k < [ratingArray count]; k++) {
                  if ((ratingArray[i].integerValue < ratingArray[j].integerValue &&
                       ratingArray[j].integerValue < ratingArray[k].integerValue) ||
                      (ratingArray[i].integerValue > ratingArray[j].integerValue &&
                       ratingArray[j].integerValue > ratingArray[k].integerValue)) {
                      result += 1;
                  }
              }
          }
      }
      return result;
}

@end
