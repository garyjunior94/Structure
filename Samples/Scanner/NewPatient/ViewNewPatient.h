//
//  ViewNewPatient.h
//  Scanner
//
//  Created by Gary Root on 5/9/18.
//  Copyright © 2018 Occipital. All rights reserved.
//

#import "Patient.h"
#import "ViewController.h"

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Structure/Structure.h>


@interface ViewNewPatient : UIViewController <STBackgroundTaskDelegate, UIPopoverControllerDelegate, UIGestureRecognizerDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UITextField *txtLastname;
@property (weak, nonatomic) IBOutlet UITextField *txtFirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtAge;
@property (weak, nonatomic) IBOutlet UITextField *medicalRecNum;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSelector;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITextView *shippingTextView;
@property (weak, nonatomic) IBOutlet UITextView *billingTextView;



@property (weak, nonatomic) IBOutlet UITextField *practitioner;
@property (weak, nonatomic) IBOutlet UITextField *phone;

@property (weak, nonatomic) IBOutlet UITextView *billingAdr;
@property (weak, nonatomic) IBOutlet UITextView *shippingAdr;


@property (nonatomic, strong) Patient *patient;

- (IBAction)startLeftScan:(id)sender;

- (IBAction)saveInfo:(id)sender;

@property (strong, nonatomic) ViewController *scanViewController;

@end
