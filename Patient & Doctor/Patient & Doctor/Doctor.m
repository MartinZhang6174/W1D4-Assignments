//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name
              specialization:(NSString *)specialization
                 medications:(NSDictionary *)medications {
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.medications = medications;
        self.acceptedPatients = [NSMutableArray new];
    }
    return self;
}

-(instancetype)initWithName:(NSString *)N specialization:(NSString *)S medications:(NSDictionary*)M andAcceptedPatients:(NSMutableArray*)A {

    return self;

}

-(void)accept:(Patient *)patient {
    if (patient.hasHealthCard) {
        [self.acceptedPatients addObject:patient];
    } else {
        
    }
}

-(void)requestMeds:(Patient *)patient {

    if ([self.acceptedPatients containsObject:@"patient.name"]) {
    
        
    
    }

}



@end
