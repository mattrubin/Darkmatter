//
//  Scene3D.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMLayer3D.h"


@implementation DMLayer3D

@synthesize camera;

- (void)prepare {
	[super prepare];
	
	camera = [DMPerspectiveCamera new];
	self.camera.z = 10;
	self.camera.y = -2;
	self.camera.pitch = -60;
}


- (void)drawObjects {
	[super drawObjects];
	
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
