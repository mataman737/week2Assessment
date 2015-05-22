//
//  ViewController.m
//  wk2_assessment
//
//  Created by Stephen T. Mata on 5/22/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "HomeViewController.h"
#import "City.h"
#import "DetailViewController.h"

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    City *lA = [[City alloc] initWithCityName:@"Los Angeles" withStateName:@"California" withCityImage:@"lA.jpg" withCityWikipedia:@"http://en.wikipedia.org/wiki/Los_Angeles"];
    City *sF = [[City alloc] initWithCityName:@"San Francisco" withStateName:@"California" withCityImage:@"sf.jpeg" withCityWikipedia:@"http://en.wikipedia.org/wiki/San_Francisco"];
    City *nY = [[City alloc] initWithCityName:@"Manhattan" withStateName:@"New York" withCityImage:@"nY.jpg" withCityWikipedia:@"http://en.wikipedia.org/wiki/Manhattan"];
    City *miami = [[City alloc] initWithCityName:@"Miami" withStateName:@"Florida" withCityImage:@"miami.jpg" withCityWikipedia:@"http://en.wikipedia.org/wiki/Miami"];

    self.cities = [NSMutableArray arrayWithObjects:lA, sF, nY, miami, nil];




}

#pragma mark - TableView

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cities.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //Establishing core properties
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    City *city = [self.cities objectAtIndex:indexPath.row];
    cell.textLabel.text = city.cityName;
    cell.detailTextLabel.text = city.stateName;
    cell.imageView.image = [UIImage imageNamed:city.cityImage];


    //Formatting image dimensions - I couldn't stand the images not being similar in shape and size.
    CGSize itemSize = CGSizeMake(40, 40);
    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();


    return cell;


}

#pragma mark - Deleting Rows

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath

//Use a conditional

{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.cities removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}


#pragma mark - Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    City *cityToPass = [self.cities objectAtIndex:indexPath.row];
    DetailViewController *vc = [segue destinationViewController];

    vc.title = cityToPass.cityName;
    vc.cityToPass = cityToPass;
}




















@end
