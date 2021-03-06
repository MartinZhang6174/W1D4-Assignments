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
@property NSSet*symptoms;

// Methdods of the patient

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age symptoms:(NSSet *)sympotoms healthCard:(bool)healthcard;

-(void)visit:(Doctor *)doctor;




@end
