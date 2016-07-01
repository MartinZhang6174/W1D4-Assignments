//
//  Printer.h
//  WordPrinter
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Printer;
@protocol PrinterDelegate <NSObject>

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text;
@optional
-(void) unstuck;

@end

@interface Printer : NSObject

@property (nonatomic, weak) id<PrinterDelegate> delegate;

-(void)printText:(NSString *)text;
-(BOOL)respondsToSelector;

@end
