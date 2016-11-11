//
//  ViewController.h
//  TableProyect
//
//  Created by RanfeDom on 11/5/16.
//  Copyright © 2016 Ranfelabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Presenter.h"

@interface ViewController : UIViewController<UITableViewDataSource,ViewProtocolDelegate>

@property (weak, nonatomic) IBOutlet UITableView *numerationTableView;

@end

