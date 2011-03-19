//
//  InputHandler.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import "DMKeyCodes.h"

typedef unsigned short keycode;

@interface DMInputHandler : NSObject {
	NSMutableSet *keysPressed;
	NSMutableSet *keysDown;
}


- (void)keyDown:(NSEvent *)theEvent;
- (void)keyUp:(NSEvent *)theEvent;

- (BOOL)keyIsDown:(keycode)keyCode;
- (BOOL)keyWasPressed:(keycode)keyCode;

@end
