//
//  GameController.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DMInputHandler.h"

@interface DMGameController : NSObject {
	DMInputHandler *inputHandler;

	CFAbsoluteTime renderTime;
}

@property (readonly) DMInputHandler *inputHandler;
@property (readwrite, assign) CFAbsoluteTime renderTime;

- (void)updateCamera;

- (void)gameDidLoad;

- (void)advanceTimeBy:(double)delta;

- (void)drawAtSize:(NSSize)size;

@end
