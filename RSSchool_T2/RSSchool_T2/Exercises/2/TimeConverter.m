#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    
    NSArray *array=[[NSArray alloc]initWithObjects:@"o' clock", @"one", @"two", @"three", @"four", @"five", @"six", @"seven", @"eight", @"nine", @"ten", @"eleven", @"twelve", @"thirteen", @"fourteen", @"quarter", @"sixteen", @"seventeen", @"eighteen", @"nineteen", @"twenty", @"thirty", @"forty", @"fifty", @"half", nil];

    NSInteger min = [minutes integerValue];
    NSInteger hour = [hours integerValue];
    NSString *rezultMin = @"";
    
    NSString *rezultHour = @"";
    NSString *rezult = @"";

      
      for (NSUInteger i = 0; i < array.count; i++) {
          
          if (0 < min && min < 21 && hour == i) {
              if (min != 15){
             rezultMin =  [NSString stringWithFormat: @"%@ minutes", [array objectAtIndex:min]];
                  rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i ]];
                  rezult  = [NSString stringWithFormat:@"%@ past %@",rezultMin, rezultHour];
          }
              if (min == 15 && hour == i) {
                  rezultMin =  [NSString stringWithFormat: @"%@", [array objectAtIndex:min]];
                  rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i ]];
                  rezult  = [NSString stringWithFormat:@"%@ past %@",rezultMin, rezultHour];
              }
          }
          if  (20 < min && min < 30) {
              
               NSUInteger simleNumbersKey =  min % 10;
               NSString *simleNumbersName = [NSString stringWithFormat:@"%@",[array objectAtIndex:simleNumbersKey]];
               NSString *tensKey = [array objectAtIndex:20];
               rezultMin = [NSString stringWithFormat:@"%@ %@ minutes", tensKey, simleNumbersName];
               rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i ]];
               rezult  = [NSString stringWithFormat:@"%@ past %@",rezultMin, rezultHour];
              
          }
          if (30 < min && min < 40 && hour == i) {
              NSString *tensKey = [array objectAtIndex:20];
              NSUInteger simleNumbersKey = (60 - min) % 10;
              NSString *simleNumbersName = [NSString stringWithFormat:@"%@",[array objectAtIndex:simleNumbersKey]];
              rezultMin = [NSString stringWithFormat:@"%@ %@ minutes", tensKey, simleNumbersName];
              rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i + 1 ]];
              rezult = [NSString stringWithFormat:@"%@ to %@", rezultMin, rezultHour];
          }
          
          if (39 < min && min<60 && min != 45 && hour == i) {
          
          NSUInteger simleNumbersKey =  60 - min;
          NSString *simleNumbersName = [NSString stringWithFormat:@"%@",[array objectAtIndex:simleNumbersKey]];
          rezultMin = [NSString stringWithFormat:@"%@ minutes", simleNumbersName];
          rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i + 1 ]];
          rezult = [NSString stringWithFormat:@"%@ to %@", rezultMin, rezultHour];
          }
        
          if (min == 30 && hour==i ) {
              rezultMin = [NSString stringWithFormat:@"%@", [array objectAtIndex:24]];
              rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i]];
              rezult = [NSString stringWithFormat:@"%@ past %@",rezultMin, rezultHour];
          }
      
          if (min == 45 && hour == i) {
              rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex: i + 1 ]];
              rezultMin = [NSString stringWithFormat:@"%@ ", [array objectAtIndex: 15]];
              rezult = [NSString stringWithFormat:@"%@to %@",rezultMin, rezultHour];
          }
    
          if (min == 0 && hour == i) {
              rezultHour = [NSString stringWithFormat:@"%@", [array objectAtIndex:i]];
              rezult = [NSString stringWithFormat:@"%@ o' clock", rezultHour];
          }
          if (min > 59){
              rezult = @"";
          }
      }
    
    return rezult;
}
@end
