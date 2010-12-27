//
//  Point3.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Point2;

@interface Point3 : NSObject {
	double x, y, z;
}
@property (assign) double x;
@property (assign) double y;
@property (assign) double z;


- (id)initWithX:(double)xi y:(double)yi z:(double)zi;

+ (Point3 *)origin;
+ (Point3 *)pointWithX:(double)xi y:(double)yi z:(double)zi;

- (Point2 *)point2;

@end
