//
//  Scene3D.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "Scene3D.h"


@interface Scene3D ()
- (void)prepare;
- (void)drawObjects;
@end


@implementation Scene3D

@synthesize camera;

- (id)init {
	if((self = [super init])){
		camera = [PerspectiveCamera new];
	}
	[self prepare];
	return self;
}

- (void)prepare {
	// Prepare camera and objects here.
	// OVERRIDE THIS METHOD
	
	self.camera.z = 10;
	self.camera.y = -2;
	self.camera.yaw = -60;
}


- (void)drawObjects {
	// Draw objects here.
	// OVERRIDE THIS METHOD
	
	glColor3f(1.0f, 0.35f, 0.25f);
    glBegin(GL_TRIANGLES);
    {
		glVertex3f( 5, 10, 0);
		glVertex3f( -5, 10, 0);
		glVertex3f( 5, 0, 0);
		glVertex3f( 5, 0, 0);
		glVertex3f( -5, 0, 0);
		glVertex3f( -5, 10, 0);
    }
    glEnd();
}


- (void)drawAtSize:(NSSize)size {
	[super drawAtSize:size];
	
	glPushMatrix();
	[camera applyAtSize:size];
	[self drawObjects];
	glPopMatrix();	
}


#pragma mark Memory management

- (void)dealloc {
	self.camera = nil;
	[super dealloc];
}

@end
