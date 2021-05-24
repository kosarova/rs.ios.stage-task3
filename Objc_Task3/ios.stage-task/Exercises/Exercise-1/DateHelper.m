#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
   
    if (monthNumber < 1 || monthNumber > 12) {
        return nil;
    }
    
    return [[NSDateFormatter new] monthSymbols][monthNumber - 1];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    NSDate *parsedDate = [dateFormatter dateFromString:date];
    
    return [[NSCalendar currentCalendar] component:NSCalendarUnitDay fromDate:parsedDate];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale: [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"]];
    [dateFormatter setDateFormat:@"E"];
       
    return [[dateFormatter stringFromDate:date] capitalizedString];
    
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *newCalendar = [NSCalendar currentCalendar];
    NSDateComponents *currentDate = [newCalendar components:(NSCalendarUnitWeekOfYear | NSCalendarUnitYear) fromDate:[NSDate now]];
    NSDateComponents *givenDate = [newCalendar components:(NSCalendarUnitWeekOfYear | NSCalendarUnitYear) fromDate:date];
    
    return (currentDate.year == givenDate.year) && (currentDate.weekOfYear == givenDate.weekOfYear);
}

@end
