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

- (void)gameDidLoad {
	[super gameDidLoad];
	scene = [MyScene new];
}

- (void)drawAtSize:(NSSize)size
{
	[scene drawAtSize:size];
}

- (void)updateCamera{
	if(inputHandler.left)
		self.scene.camera.x -= 0.05;
	if(inputHandler.right)
		self.scene.camera.x += 0.05;
	if(inputHandler.down)
		self.scene.camera.y -= 0.05;
	if(inputHandler.up)
		self.scene.camera.y += 0.05;
}

@end
