//
//  NSObject+Patient.m
//  Scanner
//
//  Created by Gary Root on 5/13/18.
//  Copyright © 2018 Occipital. All rights reserved.
//

#import "Patient.h"

typedef enum Gender
{
    male,
    female
} gender;

// Private class section
@interface Patient()

@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSString *practitioner;
@property (nonatomic, strong) NSString *phoneNum;
@property (nonatomic, strong) NSString *billAddress;
@property (nonatomic, strong) NSString *shipAddress;

// Patient Info
@property (nonatomic, strong) NSString *patFirstName;
@property (nonatomic, strong) NSString *patLastName;
@property (nonatomic, strong) NSString *patMedicalRecNum;
@property (nonatomic, assign) gender    patGender;
@property (nonatomic, strong) NSString *patAge;
@property (nonatomic, strong) NSString *patHeight;
@property (nonatomic, strong) NSString *patWeight;
@property (nonatomic, strong) NSString *patShoeSize;
@property (nonatomic, strong) NSString *patShoeType;

@end



@implementation Patient

-(void)clear
{
    _date = @"";
}

@end
