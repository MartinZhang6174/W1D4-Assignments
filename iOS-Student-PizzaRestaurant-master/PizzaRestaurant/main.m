//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
//            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            NSString *sizeCommand = [commandWords firstObject];
            
//            pizzaSize targetSize;
            int size;
            
            if([sizeCommand isEqualToString:@"small"]) {
                size = 1;
            } else if([sizeCommand isEqualToString:@"medium"]) {
                size = 2;
            } else if([sizeCommand isEqualToString:@"large"]) {
                size = 3;
            }
            
            pizzaSize targetSize = size;
            
            NSMutableArray *targetToppings = [[NSMutableArray alloc] init];
            
            for (int i = 1; i < [commandWords count]; i++) {
                [targetToppings addObject:commandWords[i]];
            }

            
            [restaurantKitchen makePizzaWithSize:targetSize toppings:targetToppings];
        }

    }
    return 0;
}

