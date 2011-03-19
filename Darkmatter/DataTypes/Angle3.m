//
//  Angle3.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "Angle3.h"


@implementation Angle3
@synthesize yaw;
@synthesize pitch;
@synthesize roll;

- (id)init {
	if((self = [super init])) {
		yaw = 0;
		pitch = 0;
		roll = 0;
	}
	return self;
}

- (id)initWithYaw:(double)y pitch:(double)p roll:(double)r {
	if((self = [super init])) {
		yaw = y;
		pitch = p;
		roll = r;
	}
	return self;
}


#pragma mark Description

-(NSString *)description {
	return [NSString stringWithFormat:@"%@[yaw:%f pitch:%f roll:%f]", [self class], self.yaw, self.pitch, self.roll];
}

@end
