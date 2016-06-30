//
//  Patient.h
//  Patient & Doctor
//
//  Created by Martin Zhang on 2016-06-30.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@class Doctor;


@interface Patient : NSObject

// Properties of the patient

@property NSInteger age;
@property NSString* name;
@property bool hasHealthCard;
@property NSString *symptoms;

// Methdods of the patient

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age andSymptoms:(NSString *)symptoms;


-(void)visit:(Doctor *)doctor;




@end
