/*
  This file is part of the Structure SDK.
  Copyright © 2016 Occipital, Inc. All rights reserved.
  http://structure.io
*/

#import "GameData.h"

@implementation GameData

- (id)init
{
    if (self = [super init])
    {
        // Must initialize any arrays here.
        self.grabbableObjects = [[NSMutableArray alloc] init];
        self.raycastIgnoredObjects = [[NSMutableArray alloc] init];
        
        _viewCenter.x = NAN;
        _viewCenter.y = NAN;
        
        return self;
    }
    return nil;
}

@end
