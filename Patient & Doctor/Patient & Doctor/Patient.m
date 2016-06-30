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
    [doctor accept:self];
}

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age andSymptoms:(NSString *)sympotoms {

    self = [super init];
    
    if(self) {
    
        self.name = name;
        self.age = age;
        self.symptoms = sympotoms;
    
    }
    
    return self;

}


@end
