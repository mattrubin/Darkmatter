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
	DMLayer3D *s = (DMLayer3D*)[self.currentScene bottomLayer];
	if([inputHandler keyIsDown:KEY_LEFT_ARROW])
		s.camera.x -= 0.1;
	if([inputHandler keyIsDown:KEY_RIGHT_ARROW])
		s.camera.x += 0.1;
	if([inputHandler keyIsDown:KEY_DOWN_ARROW])
		s.camera.y -= 0.1;
	if([inputHandler keyIsDown:KEY_UP_ARROW])
		s.camera.y += 0.1;
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
