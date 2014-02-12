//
//  WhrereAmIViewController.h
//  WhereAmI
//
//  Created by Michael Vitone on 1/27/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface WhrereAmIViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate> {
    CLLocationManager *locationManager;
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}

@end
