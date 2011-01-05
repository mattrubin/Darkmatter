//
//  DMObject.h
//  Darkmatter
//
//  Created by Matt Rubin on 1/5/11.
//  Copyright 2011. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Point3.h"
#import "Angle3.h"

@interface DMObject : NSObject {
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

- (void)draw;
- (void)applyTransformations;
- (void)drawObject;

@end
