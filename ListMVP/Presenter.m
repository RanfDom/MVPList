//
//  Presenter.m
//  TableProyect
//
//  Created by RanfeDom on 11/5/16.
//  Copyright © 2016 Ranfelabs. All rights reserved.
//

#import "Presenter.h"

@interface Presenter ()
@property (strong, nonatomic)Model *model;
@end

@implementation Presenter

#pragma mark - public
-(void)getInfoToShow
{
    [self callModelInfoToShow];
}

#pragma mark - private
-(void)setUpModel:(Model *)model
{
    _model = model;
}

- (void)callModelInfoToShow
{
    NSArray *infoArray = [_model infoToShow];
    [self.delegate updateView:infoArray];
}

@end
