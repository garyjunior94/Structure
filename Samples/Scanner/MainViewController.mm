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
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)appDidBecomeActive
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
