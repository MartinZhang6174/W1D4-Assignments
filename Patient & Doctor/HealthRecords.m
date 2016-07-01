//
//  HealthRecords.m
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "HealthRecords.h"

@implementation HealthRecords

-(void)updateMedRecordsWithDoctor:(Doctor *)doctor andPatient:(Patient *)patient {
    NSDictionary *patientRecord = @{patient.name : patient.symptoms};
    NSDictionary *doctorRecord = @{doctor.name : patientRecord};
    NSDate *date = [NSDate date];
    NSDictionary *medRecord = @{date : doctorRecord};
    [self.medRecords addObject:medRecord];
    NSLog(@"Medical record was addes successfully");
}

@end