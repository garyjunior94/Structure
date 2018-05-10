//
//  MainViewController.h
//  Scanner
//
//  Created by Gary Root on 5/9/18.
//  Copyright © 2018 Occipital. All rights reserved.
//

#import "ViewNewPatient.h"

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Structure/Structure.h>


@interface MainViewController : UIViewController <STBackgroundTaskDelegate, UIPopoverControllerDelegate, UIGestureRecognizerDelegate>

@property (retain, nonatomic) IBOutlet UILabel *titleLabel;
- (IBAction)btnPressed:(id)sender;

@property (strong, nonatomic) ViewNewPatient *viewNewPatient;

@end
