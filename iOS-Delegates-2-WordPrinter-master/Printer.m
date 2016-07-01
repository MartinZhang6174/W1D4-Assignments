//
//  Printer.m
//  WordPrinter
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@implementation Printer

-(void)printText:(NSString *)text {


//    [self.delegate printer:self numberOfTimesToPrint:5];
    NSLog(@"");

}
-(void) unstuck {
    NSLog(@"The printer is ready to be used.");
}
-(BOOL)respondsToSelector{
    return true;
}



@end
