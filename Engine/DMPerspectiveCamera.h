//
//  PerspectiveCamera.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Camera.h"
#import "Point3.h"
#import "Angle3.h"

@interface PerspectiveCamera : Camera {
	Point3 *position;
	Angle3 *orientation; 
}
@property (retain) Point3 *position;
@property (retain) Angle3 *orientation;

@property (assign) double x;
@property (assign) double y;
@property (assign) double z;

@property (assign) double yaw;
@property (assign) double pitch;
@property (assign) double roll;

- (id)initAtPosition:(Point3*)pos;
- (id)initAtPosition:(Point3*)pos orientation:(Angle3*)orient;

@end
