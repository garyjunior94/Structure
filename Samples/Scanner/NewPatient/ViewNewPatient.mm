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
@property (nonatomic, strong) NSArray *patientInfo;

-(void)loadData;

@end

@implementation ViewNewPatient

//Private
-(void)loadData{
    // Form the query.
    NSString *query = @"select * from peopleInfo";
    
    // Get the results.
    if (self.patientInfo != nil) {
        self.patientInfo = nil;
    }
    self.patientInfo = [[NSArray alloc] initWithArray:[self.dbManager loadDataFromDB:query]];
}

// Public

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
    _dateLabel.text = [dateFormatter stringFromDate:[NSDate date]];
    
    [_myScrollView addSubview:_contentView];//if the contentView is not already inside your scrollview in your xib/StoryBoard doc
    
    _myScrollView.contentSize =_contentView.frame.size; //sets ScrollView content size
    
    self.shippingTextView.layer.borderWidth = 1.0f;
    self.shippingTextView.layer.borderColor = [[UIColor grayColor] CGColor];
 
    self.billingTextView.layer.borderWidth = 1.0f;
    self.billingTextView.layer.borderColor = [[UIColor grayColor] CGColor];
    
    [self loadData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [_patient clear];
}

- (void)appDidBecomeActive
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)startLeftScan:(id)sender
{
    self.scanViewController = [[ViewController alloc] initWithNibName:@"ViewController_iPad" bundle:nil];
    
    [self.navigationItem setTitle:@"Return"];
    [self.navigationController pushViewController:self.scanViewController animated:YES];
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
    
    [self loadData];
}
@end
