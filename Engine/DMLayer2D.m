//
//  Scene2D.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMLayer2D.h"


@implementation DMLayer2D

@synthesize camera;

- (void)prepare {
	[super prepare];
	
	camera = [DMOrthoCamera new];
}


- (void)drawObjects {
	[super drawObjects];
	
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
