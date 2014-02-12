//
//  BNRMappoint.h
//  WhereAmI
//
//  Created by Michael Vitone on 1/29/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMappoint : NSObject <MKAnnotation>

-(id)initWithCoordinate: (CLLocationCoordinate2D)c title:(NSString *)t;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;

@end
