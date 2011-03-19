//
//  Point2.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "Point2.h"
#import "Point3.h"

@implementation Point2

@synthesize x;
@synthesize y;


#pragma mark Initializers

- (id)init {
	if ((self = [super init])) {
		x = 0;
		y = 0;
	}
	return self;
}

- (id)initWithX:(double)xi y:(double)yi{
	if ((self = [super init])) {
		x = xi;
		y = yi;
	}
	return self;
}


#pragma mark Class methods

+ (Point2 *)origin {
	return [[Point2 new] autorelease];
}

+ (Point2 *)pointWithX:(double)xi y:(double)yi {
	return [[[Point2 alloc] initWithX:xi y:yi] autorelease];
}


#pragma mark Point3 converters

- (Point3 *)point3 {
	return [Point3 pointWithX:self.x y:self.y z:0];
}
- (Point3 *)point3WithZ:(double)zi {
	return [Point3 pointWithX:self.x y:self.y z:zi];
}


#pragma mark Description

-(NSString *)description {
	return [NSString stringWithFormat:@"%@[x:%f y:%f]", [self class], self.x, self.y];
}

@end
