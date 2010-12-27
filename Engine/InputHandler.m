//
//  InputHandler.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "InputHandler.h"


@implementation InputHandler

@synthesize left;
@synthesize right;
@synthesize up;
@synthesize down;

- (void)keyDown:(NSEvent *)theEvent {
	NSLog(@"key %i down", [theEvent keyCode]);
	
	switch ([theEvent keyCode]) {
		case 53:
			[[NSNotificationCenter defaultCenter] postNotificationName:@"ExitFullscreen" object:self];
			break;
		case 123:
			left = YES;
			break;
		case 124:
			right = YES;
			break;
		case 125:
			down = YES;
			break;
		case 126:
			up = YES;
			break;
		default:
			break;
	}
}
- (void)keyUp:(NSEvent *)theEvent {
	NSLog(@"key %i up", [theEvent keyCode]);
	
	switch ([theEvent keyCode]) {
		case 123:
			left = NO;
			break;
		case 124:
			right = NO;
			break;
		case 125:
			down = NO;
			break;
		case 126:
			up = NO;
			break;
		default:
			break;
	}
}


@end
