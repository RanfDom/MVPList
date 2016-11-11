//
//  Model.m
//  TableProyect
//
//  Created by RanfeDom on 11/5/16.
//  Copyright © 2016 Ranfelabs. All rights reserved.
//

#import "Model.h"

@implementation Model

#pragma mark -public
-(NSArray *)infoToShow {
    //return [self numerationArray];
    return [self abcdArray];
}

#pragma mark - private
- (NSArray *)numerationArray {
    NSMutableArray *mutableNumArray = [NSMutableArray new];
    
    for (int i = 0; i<=10; i++) {
        [mutableNumArray addObject:[NSNumber numberWithInt:i+50]];
    }
    
    return mutableNumArray;
}

- (NSArray *)abcdArray {
    NSMutableArray *mutableNumArray = [NSMutableArray new];
    
    for (int i = 65; i<=90; i++) {
        NSString *string = [NSString stringWithFormat:@"%c", i];
        [mutableNumArray addObject:string];
    }
    return mutableNumArray;
}

@end
