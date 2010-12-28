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
	if(inputHandler.left)
		self.scene.camera.x -= 0.1;
	if(inputHandler.right)
		self.scene.camera.x += 0.1;
	if(inputHandler.down)
		self.scene.camera.y -= 0.1;
	if(inputHandler.up)
		self.scene.camera.y += 0.1;
}


#pragma mark Memory management

- (void)dealloc {
	self.scene = nil;
	self.menu = nil;
	[super dealloc];
}

@end
