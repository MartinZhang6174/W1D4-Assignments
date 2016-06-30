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

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        
//        Doctor *doc = [[Doctor alloc] accept:(Patient*)patient];
//        Patient *patient = [[Patient alloc]visit:(Doctor*)doc];

//        
//        [patient visit:doc];
        
        Patient *dumbestPatient = [[Patient alloc]initWithName:@"Jory Brazzoni" age:16 andSymptoms:@"Erectile Dysfunction"];
        
        Doctor *bestDoctor = [[Doctor alloc]initWithName:@"Martin" specialization:@"Everything" medications:@{@"Avanafil (Stendra)":@"Cures Erectile Dysfunction and approved by the FDA"}];
        
        
        [dumbestPatient visit:bestDoctor];
        
        [bestDoctor requestMeds:dumbestPatient];
        
    }
    return 0;
}
