//
//  WhrereAmIViewController.m
//  WhereAmI
//
//  Created by Michael Vitone on 1/27/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import "WhrereAmIViewController.h"

@interface WhrereAmIViewController ()

@end

@implementation WhrereAmIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDelegate: self];
    [locationManager setDesiredAccuracy: kCLLocationAccuracyBest];
    [worldView setShowsUserLocation:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    worldView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
-(void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
    CLLocation *location = [locations objectAtIndex:0];
    NSLog(@"%@", [location description]);
    
}

-(void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    NSLog(@"could not find the location %@" , error);
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self findLocation];
    [textField resignFirstResponder];
    return YES;
    
    
    
}

@end
