//
//  Point3.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "Point3.h"
#import "Point2.h"

@implementation Point3
@synthesize x;
@synthesize y;
@synthesize z;


#pragma mark Initializers

- (id)init {
	if ((self = [super init])) {
		x = 0;
		y = 0;
		z = 0;
	}
	return self;
}

- (id)initWithX:(double)xi y:(double)yi z:(double)zi{
	if ((self = [super init])) {
		x = xi;
		y = yi;
		z = zi;
	}
	return self;
}


#pragma mark Class methods

+ (Point3 *)origin {
	return [[Point3 new] autorelease];
}

+ (Point3 *)pointWithX:(double)xi y:(double)yi z:(double)zi {
	return [[[Point3 alloc] initWithX:xi y:yi z:zi] autorelease];
}


#pragma mark Point2 converter

- (Point2 *)point2 {
	return [Point2 pointWithX:self.x y:self.y];
}


#pragma mark Description

-(NSString *)description {
	return [NSString stringWithFormat:@"%@[x:%f y:%f z:%f]", [self class], self.x, self.y, self.z];
}

@end
