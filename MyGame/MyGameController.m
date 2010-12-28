//
//  MyGameController.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "MyGameController.h"


@implementation MyGameController

@synthesize currentScene;
@synthesize scene;
@synthesize menu;

- (void)gameDidLoad {
	[super gameDidLoad];
	currentScene = [DMScene new];
	scene = [MyScene new];
	menu = [MyMenu new];
	[currentScene addLayer:scene];
	[currentScene addLayer:menu];
}

- (void)drawAtSize:(NSSize)size
{
	[currentScene drawAtSize:size];
	//[scene drawAtSize:size];
	//[menu drawAtSize:size];
}

- (void)updateCamera{
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
