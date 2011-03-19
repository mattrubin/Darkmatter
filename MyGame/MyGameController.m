//
//  MyGameController.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "MyGameController.h"


@implementation MyGameController

@synthesize scene;
@synthesize menu;

- (void)gameDidLoad {
	[super gameDidLoad];

	scene = [MyScene new];
	menu = [MyMenu new];
	[self.currentScene addLayer:scene];
	[self.currentScene addLayer:menu];
}

- (void)drawAtSize:(NSSize)size {
	[super drawAtSize:size];
}

- (void)updateCamera {
	MyScene *s = (MyScene*)[self.currentScene bottomLayer];
	if([inputHandler keyIsDown:KEY_LEFT_ARROW])
		s.obj.x -= .1;
	if([inputHandler keyIsDown:KEY_RIGHT_ARROW])
		s.obj.x += .1;
	if([inputHandler keyIsDown:KEY_DOWN_ARROW])
		s.obj.y -= .1;
	if([inputHandler keyIsDown:KEY_UP_ARROW])
		s.obj.y += .1;
	
	if([inputHandler keyIsDown:KEY_W])
		s.camera.pitch += 1;
	if([inputHandler keyIsDown:KEY_S])
		s.camera.pitch -= 1;
	if([inputHandler keyIsDown:KEY_A])
		s.camera.yaw -= 1;
	if([inputHandler keyIsDown:KEY_D])
		s.camera.yaw += 1;
	if([inputHandler keyIsDown:KEY_Q])
		s.camera.roll -= 1;
	if([inputHandler keyIsDown:KEY_E])
		s.camera.roll += 1;
	
	if([inputHandler keyWasPressed:KEY_SPACEBAR]) {
		[self pushScene:[DMScene new]];
		[self.currentScene addLayer:[MyScene new]];
		[self.currentScene addLayer:[MyMenu new]];
	} else if([inputHandler keyWasPressed:KEY_DELETE]) {
		[self popScene];
	}
}


#pragma mark Memory management

- (void)dealloc {
	self.scene = nil;
	self.menu = nil;
	[super dealloc];
}

@end
