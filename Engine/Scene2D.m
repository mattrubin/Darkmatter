//
//  Scene2D.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "Scene2D.h"
#import "OpenGL.h"


@interface Scene2D ()
- (void)clearView;
- (void)prepare;
- (void)drawObjects;
@end


@implementation Scene2D

@synthesize camera;
@synthesize clearColor;

- (id)init {
	if((self = [super init])){
		camera = [OrthoCamera new];
		self.clearColor = [Color4 black]; 
	}
	return self;
}

- (void)prepare {
	// Prepare camera and objects here.
	// OVERRIDE THIS METHOD
}

- (void)clearView {
	[OpenGL setClearColor:clearColor];
    glClear(GL_COLOR_BUFFER_BIT);
}


- (void)drawObjects:(NSSize)size {
	// Draw objects here.
	// OVERRIDE THIS METHOD
	
    glColor3f(0.4f, 0.3f, 1.0f);
    glBegin(GL_TRIANGLES);
    {
		glVertex3f( size.width/2-100, size.height/2-100, 0);
		glVertex3f( size.width/2-100, size.height/2+100, 0);
		glVertex3f( size.width/2+100, size.height/2-100, 0);
		glVertex3f( size.width/2+100, size.height/2-100, 0);
		glVertex3f( size.width/2-100, size.height/2+100, 0);
		glVertex3f( size.width/2+100, size.height/2+100, 0);
    }
    glEnd();
}


- (void)drawAtSize:(NSSize)size {
	//[self clearView];
	glPushMatrix();
	[camera applyAtSize:size];
	[self drawObjects:size];
	glPopMatrix();
}


#pragma mark Memory management

- (void)dealloc {
	self.camera = nil;
	self.clearColor = nil;
	[super dealloc];
}

@end
