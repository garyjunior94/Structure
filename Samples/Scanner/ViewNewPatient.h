//
//  ViewNewPatient.h
//  Scanner
//
//  Created by Gary Root on 5/9/18.
//  Copyright © 2018 Occipital. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Structure/Structure.h>


@interface ViewNewPatient : UIViewController <STBackgroundTaskDelegate, UIPopoverControllerDelegate, UIGestureRecognizerDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UITextField *txtLastname;
@property (weak, nonatomic) IBOutlet UITextField *txtFirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtAge;

@property (weak, nonatomic) IBOutlet UITableView *tblPeople;
@property (weak, nonatomic) IBOutlet UITableViewCell *myCell;

- (IBAction)saveInfo:(id)sender;

@end
