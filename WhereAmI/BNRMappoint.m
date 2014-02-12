//
//  BNRMappoint.m
//  WhereAmI
//
//  Created by Michael Vitone on 1/29/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import "BNRMappoint.h"

@implementation BNRMappoint
@synthesize coordinate;
@synthesize title;

-(id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t {
    self = [super init];
    if (self) {
        coordinate = c;
        title = t;
    }
    return self;
    
}

-(id) init{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07,-89.32) title:@"hometown"];
}

@end
