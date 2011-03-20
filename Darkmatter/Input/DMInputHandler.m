//
//  InputHandler.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "DMInputHandler.h"


@implementation DMInputHandler

- (id)init {
	if((self = [super init])){
		keysDown = [[NSMutableSet alloc] initWithCapacity:10];
		keysPressed = [[NSMutableSet alloc] initWithCapacity:10];
	}
	return self;
}

- (void)keyDown:(NSEvent *)theEvent {
	if(![keysDown containsObject:[NSNumber numberWithUnsignedShort:[theEvent keyCode]]]){
		NSLog(@"key 0x%02x down", [theEvent keyCode]);
		[keysDown addObject:[NSNumber numberWithUnsignedShort:[theEvent keyCode]]];
		[keysPressed addObject:[NSNumber numberWithUnsignedShort:[theEvent keyCode]]];
	}
}

- (void)keyUp:(NSEvent *)theEvent {
	NSLog(@"key %i up", [theEvent keyCode]);
	[keysDown removeObject:[NSNumber numberWithUnsignedShort:[theEvent keyCode]]];
}

- (BOOL)keyIsDown:(DMKey)keyCode {
	return [keysDown containsObject:[NSNumber numberWithUnsignedShort:keyCode]];
}

- (BOOL)keyWasPressed:(DMKey)keyCode {
	if([keysPressed containsObject:[NSNumber numberWithUnsignedShort:keyCode]]) {
		[keysPressed removeObject:[NSNumber numberWithUnsignedShort:keyCode]];
		return YES;
	} else {
		return NO;
	}
}



@end
