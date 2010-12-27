//
//  Scene3D.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "Scene3D.h"
#import "OpenGL.h"


@interface Scene3D ()
- (void)clearView;
- (void)prepare;
- (void)drawObjects;
@end


@implementation Scene3D

@synthesize camera;
@synthesize clearColor;

- (id)init {
	if((self = [super init])){
		camera = [PerspectiveCamera new];
		self.clearColor = [Color4 black];
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

- (void)clearView {
	[OpenGL setClearColor:clearColor];
    glClear(GL_COLOR_BUFFER_BIT);
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
	[self clearView];
	glPushMatrix();
	[camera applyAtSize:size];
	[self drawObjects];
	glPopMatrix();	
}

@end
