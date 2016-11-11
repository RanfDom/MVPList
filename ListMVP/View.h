//
//  View.h
//  TableProyect
//
//  Created by RanfeDom on 11/5/16.
//  Copyright © 2016 Ranfelabs. All rights reserved.
//

@protocol ViewProtocolDelegate <NSObject>
@required
- (void)updateView:(NSArray *)array;
@end
