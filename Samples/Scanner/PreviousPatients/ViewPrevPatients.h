//
//  ViewPrevPatients.h
//  Scanner
//
//  Created by Gary Root on 5/9/18.
//  Copyright © 2018 Occipital. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Structure/Structure.h>


@interface ViewPrevPatients : UIViewController <STBackgroundTaskDelegate, UIPopoverControllerDelegate, UIGestureRecognizerDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tblPeople;
@property (weak, nonatomic) IBOutlet UITableViewCell *myCell;

@end
