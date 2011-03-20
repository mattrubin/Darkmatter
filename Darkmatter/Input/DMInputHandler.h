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


@interface DMInputHandler : NSObject {
	NSMutableSet *keysPressed;
	NSMutableSet *keysDown;
}

- (void)keyDown:(NSEvent *)theEvent;
- (void)keyUp:(NSEvent *)theEvent;

- (BOOL)keyIsDown:(DMKey)keyCode;
- (BOOL)keyWasPressed:(DMKey)keyCode;

@end
