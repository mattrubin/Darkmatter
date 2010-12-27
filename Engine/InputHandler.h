//
//  InputHandler.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface InputHandler : NSObject {
	BOOL left;
	BOOL right;
	BOOL up;
	BOOL down;	
}
@property (readonly) BOOL left;
@property (readonly) BOOL right;
@property (readonly) BOOL up;
@property (readonly) BOOL down;

- (void)keyDown:(NSEvent *)theEvent;
- (void)keyUp:(NSEvent *)theEvent;

@end
