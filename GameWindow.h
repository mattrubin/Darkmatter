//
//  GameWindow.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//
//  Original concept and code by Matt Gallagher
//  http://cocoawithlove.com/2009/08/animating-window-to-fullscreen-on-mac.html

#import <Cocoa/Cocoa.h>
#import "FullscreenWindow.h"


@interface GameWindow : NSWindow {
	BOOL fullscreen;
	FullscreenWindow *fullscreenWindow;
}

- (void)enterFullscreen;
- (void)exitFullscreen;
- (IBAction)toggleFullscreen;

@end
