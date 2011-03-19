//
//  Angle3.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>


@interface Angle3 : NSObject {
	double yaw, pitch, roll;
}
@property (assign) double yaw;
@property (assign) double pitch;
@property (assign) double roll;

- (id)initWithYaw:(double)y pitch:(double)p roll:(double)r;

@end
