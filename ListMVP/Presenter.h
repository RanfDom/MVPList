//
//  Presenter.h
//  TableProyect
//
//  Created by RanfeDom on 11/5/16.
//  Copyright © 2016 Ranfelabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "View.h"
#import "Model.h"

@interface Presenter : NSObject
@property (strong, nonatomic)id <ViewProtocolDelegate>delegate;

- (void) setUpModel:(Model *)model;
- (void) getInfoToShow;

@end
