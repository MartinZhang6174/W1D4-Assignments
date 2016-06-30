//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
//#import "Patient.h"

@interface Doctor : NSObject

// Properties of the doctor

@property NSString *name;
@property NSString *specialization;
@property NSDictionary *medications;
@property NSMutableArray *acceptedPatients;




-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization medications:(NSDictionary*)medications;



// Methods of the doctor

-(void)accept:(Patient *)patient;
-(void)requestMeds:(Patient *)patient;



@end
