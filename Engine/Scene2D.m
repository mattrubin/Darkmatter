//
//  Scene2D.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "Scene2D.h"


@interface Scene2D ()
- (void)prepare;
- (void)drawObjects;
@end


@implementation Scene2D

@synthesize camera;

- (id)init {
	if((self = [super init])){
		camera = [OrthoCamera new];
	}
	[self prepare];
	return self;
}

- (void)prepare {
	// Prepare camera and objects here.
	// OVERRIDE THIS METHOD
}


- (void)drawObjects {
	// Draw objects here.
	// OVERRIDE THIS METHOD
	
    glColor3f(0.4f, 0.3f, 1.0f);
    glBegin(GL_TRIANGLES);
    {
		glVertex3f( self.currentSize.width/2-100, self.currentSize.height/2-100, 0);
		glVertex3f( self.currentSize.width/2-100, self.currentSize.height/2+100, 0);
		glVertex3f( self.currentSize.width/2+100, self.currentSize.height/2-100, 0);
		glVertex3f( self.currentSize.width/2+100, self.currentSize.height/2-100, 0);
		glVertex3f( self.currentSize.width/2-100, self.currentSize.height/2+100, 0);
		glVertex3f( self.currentSize.width/2+100, self.currentSize.height/2+100, 0);
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
