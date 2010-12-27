//
//  OrthoCamera.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "OrthoCamera.h"


@implementation OrthoCamera

@synthesize position;
@synthesize zoom;

#pragma mark Initializers

- (id)init {
	if((self = [super init])){
		position = [Point2 new];
		zoom = 1;
	}
	return self;
}
- (id)initAtPosition:(Point2*)pos {
	if((self = [super init])){
		self.position = pos;
		zoom = 1;
	}
	return self;
}
- (id)initAtPosition:(Point2*)pos zoom:(double)z {
	if((self = [super init])){
		self.position = pos;
		self.zoom = z;
	}
	return self;
}


#pragma mark OpenGL

- (void)establishPerspectiveAtSize:(NSSize)size {
	glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
	
	glLoadIdentity();
	glOrtho(position.x, position.x + size.width/zoom, position.y, position.y + size.height/zoom, 10, -20);
	
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();	
}


#pragma mark Setters and getters

- (void)setX:(double)xx { position.x = xx; }
- (void)setY:(double)yy { position.y = yy; }
- (double)x { return position.x; }
- (double)y { return position.y; }


#pragma mark Memory management

- (void)dealloc {
	self.position = nil;
	[super dealloc];
}

@end
