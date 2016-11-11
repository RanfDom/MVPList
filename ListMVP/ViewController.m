//
//  ViewController.m
//  TableProyect
//
//  Created by RanfeDom on 11/5/16.
//  Copyright © 2016 Ranfelabs. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()
@property (strong, nonatomic)Presenter *presenter;
@end

@implementation ViewController{
    NSArray *contentArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _numerationTableView.dataSource = self;
    _presenter = [Presenter new];
    [_presenter setUpModel:[Model new]];
    _presenter.delegate = self;
    contentArray = @[];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [_presenter getInfoToShow];
}

#pragma mark - TableDataSourceDelegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Num: %@",contentArray[indexPath.row]];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return contentArray.count;
}

#pragma mark - Presenter Delegate
-(void)updateView:(NSArray *)array{
    contentArray = array;
    [_numerationTableView reloadData];
}

@end
