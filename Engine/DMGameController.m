//
//  GameController.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "DMGameController.h"


@implementation DMGameController

@synthesize inputHandler;
@synthesize renderTime;

- (void)advanceTimeBy:(double)delta {
	// NSLog(@"%.2f FPS", (1/delta)); // Print FPS
	[self updateCamera];
}

- (void)gameDidLoad {
	inputHandler = [DMInputHandler new];
}

- (void)drawAtSize:(NSSize)size
{
	// Draw scene here.
	glClearColor(1,.5,0,1);
	glClear(GL_COLOR_BUFFER_BIT);
}

- (void)updateCamera{
	// Respond to input/time passing here.
}


#pragma mark Memory management

- (void)dealloc {
	[inputHandler release];
	inputHandler = nil;
	[super dealloc];
}

@end
