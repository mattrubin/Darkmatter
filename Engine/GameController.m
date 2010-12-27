//
//  GameController.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "GameController.h"


@implementation GameController

@synthesize inputHandler;
@synthesize renderTime;

- (void)advanceTimeBy:(double)delta {
	// NSLog(@"%.2f FPS", (1/delta)); // Print FPS
	[self updateCamera];
}

- (void)gameDidLoad {
	inputHandler = [InputHandler new];
}

- (void)drawAtSize:(NSSize)size
{
	glClearColor(1,.5,0,1);
	glClear(GL_COLOR_BUFFER_BIT);
}

- (void)updateCamera{
	//Respond to input/time passing here.
}

@end
