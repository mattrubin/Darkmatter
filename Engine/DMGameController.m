//
//  GameController.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "DMGameController.h"


@implementation DMGameController

//@synthesize currentScene;
@synthesize inputHandler;
@synthesize renderTime;

- (void)advanceTimeBy:(double)delta {
	// NSLog(@"%.2f FPS", (1/delta)); // Print FPS
	[self updateCamera];
}

- (void)gameDidLoad {
	inputHandler = [DMInputHandler new];
	sceneStack = [[NSMutableArray alloc] initWithCapacity:10];
	self.currentScene = [DMScene new];
}





- (DMScene*)currentScene {
	return [sceneStack lastObject];
}
- (void)setCurrentScene:(DMScene*)scene {
	[self replaceScene:scene];
}


#pragma mark Scene Management

- (void)pushScene:(DMScene*)scene {
	NSAssert( scene != nil, @"Argument must be non-nil");
	[sceneStack addObject: scene];
}

- (void)popScene {
	NSAssert( self.currentScene != nil, @"A running Scene is needed");
	[sceneStack removeLastObject];
}

- (void)replaceScene:(DMScene*)scene {
	NSAssert(scene != nil, @"Argument must be non-nil");
	NSUInteger index = [sceneStack count];
	if(index > 0){
		[sceneStack replaceObjectAtIndex:index-1 withObject:scene];
	} else {
		[self pushScene:scene];
	}
}






- (void)drawAtSize:(NSSize)size
{
	// Draw scene here.
	glClearColor(1,.5,0,1);
	glClear(GL_COLOR_BUFFER_BIT);
	[self.currentScene drawAtSize:size];
}

- (void)updateCamera{
	// Respond to input/time passing here.
}


#pragma mark Memory management

- (void)dealloc {
	[sceneStack release];
	[inputHandler release];
	inputHandler = nil;

	[super dealloc];
}

@end
