//
//  DBManager.h
//  Scanner
//
//  Created by Gary Root on 5/10/18.
//  Copyright © 2018 Occipital. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface DBManager : NSObject

@property (nonatomic, strong) NSMutableArray *arrColumnNames;
@property (nonatomic) int affectedRows;
@property (nonatomic) long long lastInsertedRowID;

-(instancetype)initWithDatabaseFilename:(NSString *)dbFilename;

-(NSArray *)loadDataFromDB:(NSString *)query;
-(void)executeQuery:(NSString *)query;

@end
