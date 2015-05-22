//
//  DetailViewController.h
//  wk2_assessment
//
//  Created by Stephen T. Mata on 5/22/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailViewController : UIViewController

@property City *cityToPass;

@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UIImageView *cityImage;

@end
