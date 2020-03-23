#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
  //  formatter.dateFormat = @"d MMMM, EEEE";
    
    formatter.dateFormat = @"dd.MM.yyyy";
    
    NSString *dateString = [NSString stringWithFormat: @"%@, %@, %@", day, month, year];
    
    NSDate *dateDate = [formatter dateFromString:dateString];
    
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    formatter2.dateFormat = @"d MMMM, EEEE";
    formatter2.locale = [NSLocale localeWithLocaleIdentifier:@"ru_BY"];
    
    NSString *stringDate = [formatter2 stringFromDate:dateDate];
    
    if (stringDate == (NSString*)nil){
        return @"Такого дня не существует";
    }
 
    return stringDate;
    
    
    
    
    //return @"";
}

@end
