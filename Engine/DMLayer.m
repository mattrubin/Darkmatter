//
//  Scene.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMLayer.h"
#import "OpenGL.h"


@implementation DMLayer

@synthesize clearColor;
@synthesize currentSize;
@synthesize clearsOnDraw;

- (id)init {
	if((self = [super init])){
		self.clearColor = [Color4 colorWithRed:0 green:0 blue:0 alpha:1];
		self.clearsOnDraw = YES;
		[self prepare];
	}
	return self;
}

- (void)clearView {
	[OpenGL setClearColor:clearColor];
    glClear(GL_COLOR_BUFFER_BIT);
}

- (void)prepare {
	// Prepare camera and objects here.
	// OVERRIDE THIS METHOD
}

- (void)drawObjects {
	// Draw objects here.
	// OVERRIDE THIS METHOD
}

- (void)drawAtSize:(NSSize)size {
	self.currentSize = size;
	if(self.clearsOnDraw) [self clearView];
}


#pragma mark Memory management

- (void)dealloc {
	self.clearColor = nil;
	[super dealloc];
}

@end
