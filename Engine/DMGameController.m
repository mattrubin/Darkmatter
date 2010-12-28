//
//  GameController.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "DMGameController.h"


@implementation DMGameController

@synthesize currentScene;
@synthesize inputHandler;
@synthesize renderTime;

- (void)advanceTimeBy:(double)delta {
	// NSLog(@"%.2f FPS", (1/delta)); // Print FPS
	[self updateCamera];
}

- (void)gameDidLoad {
	currentScene = [DMScene new];
	inputHandler = [DMInputHandler new];
}

- (void)drawAtSize:(NSSize)size
{
	// Draw scene here.
	glClearColor(1,.5,0,1);
	glClear(GL_COLOR_BUFFER_BIT);
	[currentScene drawAtSize:size];
}

- (void)updateCamera{
	// Respond to input/time passing here.
}


#pragma mark Memory management

- (void)dealloc {
	self.currentScene = nil;
	[inputHandler release];
	inputHandler = nil;

	[super dealloc];
}

@end
