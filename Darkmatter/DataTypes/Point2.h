//
//  Point2.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>

@class Point3;

@interface Point2 : NSObject {
	double x, y;
}
@property (assign) double x;
@property (assign) double y;


- (id)initWithX:(double)xi y:(double)yi;

+ (Point2 *)origin;
+ (Point2 *)pointWithX:(double)xi y:(double)yi;

- (Point3 *)point3;
- (Point3 *)point3WithZ:(double)zi;

@end
