//
//  PerspectiveCamera.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMPerspectiveCamera.h"
#import <GLUT/GLUT.h>

@implementation DMPerspectiveCamera

@synthesize position;
@synthesize orientation;


#pragma mark Initializers

- (id)init {
	if((self = [super init])){
		position = [Point3 new];
		orientation = [Angle3 new];
	}
	return self;
}
- (id)initAtPosition:(Point3*)pos {
	if((self = [super init])){
		self.position = pos;
		orientation = [Angle3 new];
	}
	return self;
}
- (id)initAtPosition:(Point3*)pos orientation:(Angle3*)orient {
	if((self = [super init])){
		self.position = pos;
		self.orientation = orient;
	}
	return self;
}


#pragma mark OpenGL

- (void)establishPerspectiveAtSize:(NSSize)size {
	glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
	
	float aspectRatio = (size.width/size.height);
	gluPerspective(50.0f, aspectRatio, .1f, 300.0f);
	
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

- (void)applyAtSize:(NSSize)size {
	[super applyAtSize:size];
	
	glRotatef(orientation.roll, 0, 1, 0);
	glRotatef(-90-orientation.pitch, 1, 0, 0);
	glRotatef(orientation.yaw, 0, 0, 1);
	glTranslated(-position.x, -position.y, -position.z);
}


#pragma mark Setters and getters

- (void)setX:(double)xx { position.x = xx; }
- (void)setY:(double)yy { position.y = yy; }
- (void)setZ:(double)zz { position.z = zz; }
- (double)x { return position.x; }
- (double)y { return position.y; }
- (double)z { return position.z; }


- (void)setYaw:(double)y { orientation.yaw = y; }
- (void)setPitch:(double)p { orientation.pitch = p; }
- (void)setRoll:(double)r { orientation.roll = r; }
- (double)yaw { return orientation.yaw; }
- (double)pitch { return orientation.pitch; }
- (double)roll { return orientation.roll; }


#pragma mark Memory management

- (void)dealloc {
	self.position = nil;
	self.orientation = nil;
	[super dealloc];
}


@end
