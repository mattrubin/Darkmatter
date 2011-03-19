//
//  OrthoCamera.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DMCamera.h"
#import "Point2.h"

@interface DMOrthoCamera : DMCamera {
	Point2 *position;
	double zoom;
}

@property (retain) Point2 *position;
@property (assign) double x;
@property (assign) double y;
@property (assign) double zoom;

- (id)initAtPosition:(Point2*)pos;
- (id)initAtPosition:(Point2*)pos zoom:(double)z;

@end
