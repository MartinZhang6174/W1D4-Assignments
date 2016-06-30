//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Health Care Information Storage.m"

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



-(void)accept:(Patient *)patient {
    if (patient.hasHealthCard == true && ![self.acceptedPatients containsObject:@"patient.name"]) {
        [self.acceptedPatients addObject:patient];
        NSLog(@"The patient was accepted.");
    } else {
        NSLog(@"The patient was not accepted due to the absence of a valid health card.");
    }
}

-(void)requestMeds:(Patient *)patient {

    for (NSString *symptom in patient.symptoms) {
        if ([[self.medications allKeys] containsObject:symptom]) {
            
            
            // Add symptoms to the already-existed NSMutableSet
            
            [healthCareSystem addObject:symptom];
            
            NSLog(@"You should take %@ for your %@", [self.medications objectForKey:symptom], symptom);
            
        }
        else {
            NSLog(@"I don't know what to prescribe for your %@", symptom);
        }
    }
}



@end
