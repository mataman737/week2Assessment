//
//  City.h
//  wk2_assessment
//
//  Created by Stephen T. Mata on 5/22/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *cityName;
@property NSString *stateName;
@property NSString *wikipedia;

//Image Property
@property (nonatomic) NSString *cityImage;

-(instancetype)initWithCityName:(NSString *)cityName withStateName:(NSString *)stateName withCityImage:(NSString *)cityImage withCityWikipedia:(NSString *)wikipedia;

@end
