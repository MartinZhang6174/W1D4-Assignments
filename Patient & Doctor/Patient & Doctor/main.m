//
//  main.m
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "HealthRecords.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        
//        Doctor *doc = [[Doctor alloc] accept:(Patient*)patient];
//        Patient *patient = [[Patient alloc]visit:(Doctor*)doc];

//        
//        [patient visit:doc];
        NSSet *symptomsSet = [NSSet setWithObjects:@"Erectile Dysfunction", @"Penis Pain", nil];
        Patient *dumbestPatient = [[Patient alloc]initWithName:@"Jory Brazzoni" age:16 symptoms:symptomsSet  healthCard:false];
        
        Doctor *bestDoctor = [[Doctor alloc]initWithName:@"Martin" specialization:@"Everything" medications:@{@"Erectile Dysfunction":@"Avanafil (Stendra)"}];
        
        HealthRecords *healthRecords = [[HealthRecords alloc] init];
        [healthRecords updateMedRecordsWithDoctor:bestDoctor andPatient:dumbestPatient];
        
        [dumbestPatient visit:bestDoctor];
        
    }
    return 0;
}
