//
//  ViewNewPatient.mm
//  Scanner
//
//  Created by Gary Root on 5/9/18.
//  Copyright © 2018 Occipital. All rights reserved.
//

#import "ViewNewPatient.h"
#import "DBManager.h"

@interface ViewNewPatient()

@property (nonatomic, strong) DBManager *dbManager;

@end

@implementation ViewNewPatient


- (void)dealloc
{
}

- (void)setupUserInterface
{
    // Make sure the status bar is hidden.
    //[[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
    
    // Fully transparent message label, initially.
    //self.appStatusMessageLabel.alpha = 0;
    
    // Make sure the label is on top of everything else.
    //self.appStatusMessageLabel.layer.zPosition = 100;
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    
    self.dbManager = [[DBManager alloc] initWithDatabaseFilename:@"sampledb.sql"];
    
    self.txtLastname.delegate = self;
    self.txtFirstname.delegate = self;
    self.txtAge.delegate = self;
    
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    // or @"yyyy-MM-dd hh:mm:ss a" if you prefer the time with AM/PM
    //NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
    
    _dateLabel.text = [dateFormatter stringFromDate:[NSDate date]];
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

- (IBAction)saveInfo:(id)sender
{
    // Prepare the query string.
    NSString *query = [NSString stringWithFormat:@"insert into peopleInfo values(null, '%@', '%@', %d)", self.txtFirstname.text, self.txtLastname.text, [self.txtAge.text intValue]];
    
    // Execute the query.
    [self.dbManager executeQuery:query];
    
    // If the query was successfully executed then pop the view controller.
    if (self.dbManager.affectedRows != 0) {
        NSLog(@"Query was executed successfully. Affected rows = %d", self.dbManager.affectedRows);
        
        // Pop the view controller.
        //[self.navigationController popViewControllerAnimated:YES];
    }
    else{
        NSLog(@"Could not execute the query.");
    }
}
@end
