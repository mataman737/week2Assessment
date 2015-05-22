//
//  City.m
//  wk2_assessment
//
//  Created by Stephen T. Mata on 5/22/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype)initWithCityName:(NSString *)cityName withStateName:(NSString *)stateName withCityImage:(NSString *)cityImage withCityWikipedia:(NSString *)wikipedia {
    self = [super init];
    self.cityName = cityName;
    self.stateName = stateName;
    self.cityImage = cityImage;
    self.wikipedia = wikipedia;


    return self;
}


//If I have extra time. Add This.
//- (void)setCityImage:(NSString *)cityImage {
//    
//}


@end
