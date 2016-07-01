//
//  Patient.m
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(void)visit:(Doctor *)doctor {
    NSLog(@"Patient just visited the doctor.");
    [doctor accept:self];
}

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age symptoms:(NSSet *)sympotoms healthCard:(bool)healthcard {

    self = [super init];
    
    if(self) {
    
        self.name = name;
        self.age = age;
        self.symptoms = sympotoms;
        self.hasHealthCard = healthcard;
    
    }
    
    return self;

}


@end
