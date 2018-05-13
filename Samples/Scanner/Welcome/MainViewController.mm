//
//  MainViewController.m
//  Scanner
//
//  Created by Gary Root on 5/9/18.
//  Copyright © 2018 Occipital. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

- (void)dealloc
{
}

- (void)setupUserInterface
{
    // Make sure the status bar is hidden.
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
    
    // Fully transparent message label, initially.
    //self.appStatusMessageLabel.alpha = 0;
    
    // Make sure the label is on top of everything else.
    //self.appStatusMessageLabel.layer.zPosition = 100;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    self.viewNewPatient = [[ViewNewPatient alloc] initWithNibName:@"ViewNewPatient" bundle:nil];
    
    self.viewPrevPatients = [[ViewPrevPatients alloc] initWithNibName:@"ViewPrevPatients" bundle:nil];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)appDidBecomeActive
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)newPatientBtn:(id)sender
{
    //_btnPressedLabel.hidden = !_btnPressedLabel.hidden;
    
    //WORKS
    //[self presentViewController:self.viewNewPatient animated:YES completion:nil];
    [self.navigationItem setTitle:@"Save & Close"];
    [self.navigationController pushViewController:self.viewNewPatient animated:YES];
}

- (IBAction)prevPatientBtn:(id)sender
{
    [self.navigationItem setTitle:@"Back"];
    [self.navigationController pushViewController:self.viewPrevPatients animated:YES];
}

@end
