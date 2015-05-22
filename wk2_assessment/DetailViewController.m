//
//  DetailViewController.m
//  wk2_assessment
//
//  Created by Stephen T. Mata on 5/22/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "DetailViewController.h"
#import "City.h"
#import "WikipediaViewController.h"

@interface DetailViewController ()


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cityTextField.text = self.cityToPass.cityName;
    self.stateTextField.text = self.cityToPass.stateName;
    self.cityImage.image = [UIImage imageNamed:self.cityToPass.cityImage];

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    WikipediaViewController *destVc = segue.destinationViewController;
    destVc.textTitle = self.cityToPass.cityName;
}



@end
