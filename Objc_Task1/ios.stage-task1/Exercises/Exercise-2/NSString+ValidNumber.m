#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSString *myNewString = self;
    NSString *voidString = @"";
    NSString *testString = [NSString string];
   
    NSScanner *scanner = [NSScanner scannerWithString:myNewString];
    
    NSCharacterSet *skips = [NSCharacterSet characterSetWithCharactersInString:@"1234567890"];

    [scanner scanCharactersFromSet:skips intoString:&testString];

    if ([myNewString isEqualToString:voidString]) {
        return false;
    }else if ([myNewString length] == [testString length]) {
        return true;
    } else {
        return false;
    }
}

@end
