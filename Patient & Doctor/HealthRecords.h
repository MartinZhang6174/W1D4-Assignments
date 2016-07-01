//
//  HealthRecords.h
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface HealthRecords : NSObject

@property NSMutableSet* medRecords;

-(void)updateMedRecordsWithDoctor:(Doctor *)doctor andPatient:(Patient *)patient;

@end
