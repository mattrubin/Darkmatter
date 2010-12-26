//
//  GameWindow.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//
//  Original concept and code by Matt Gallagher
//  http://cocoawithlove.com/2009/08/animating-window-to-fullscreen-on-mac.html

#import "GameWindow.h"


@implementation GameWindow

- (void)enterFullscreen {
	if(fullscreen) return;
	fullscreen = YES;
	
	if(!fullscreenWindow) 	{
		[self deminiaturize:nil];
		
		if ([[self screen] isEqual:[[NSScreen screens] objectAtIndex:0]])
		{
			[NSMenu setMenuBarVisible:NO];
			//	[[NSApplication sharedApplication] setPresentationOptions:NSApplicationPresentationHideMenuBar & NSApplicationPresentationAutoHideDock];
		}
		
		fullscreenWindow = [[FullscreenWindow alloc]
							initWithContentRect:[self contentRectForFrameRect:[self frame]]
							styleMask:NSBorderlessWindowMask
							backing:NSBackingStoreBuffered
							defer:YES];
		
		NSView *contentView = [[[self contentView] retain] autorelease];
		[self setContentView:[[[NSView alloc] init] autorelease]];
		
		[fullscreenWindow setLevel:NSFloatingWindowLevel];
		[fullscreenWindow setContentView:contentView];
		[fullscreenWindow setTitle:[self title]];
		[fullscreenWindow makeKeyAndOrderFront:nil];
		[fullscreenWindow setHidesOnDeactivate:YES];
		
		
		[fullscreenWindow
		 setFrame:
		 [fullscreenWindow
		  frameRectForContentRect:[[self screen] frame]]
		 display:YES
		 animate:YES];
		
		[self orderOut:nil];
	}
	
}


- (void)exitFullscreen {
	if(!fullscreen) return;
	fullscreen = NO;
	
	if (fullscreenWindow)
	{
		NSRect newFrame = [fullscreenWindow frameRectForContentRect:
						   [self contentRectForFrameRect:[self frame]]];
		[fullscreenWindow
		 setFrame:newFrame
		 display:YES
		 animate:YES];
		
		NSView *contentView = [[[fullscreenWindow contentView] retain] autorelease];
		[fullscreenWindow setContentView:[[[NSView alloc] init] autorelease]];
		
		[self setContentView:contentView];
		[self makeKeyAndOrderFront:nil];
		
		[fullscreenWindow close];
		fullscreenWindow = nil;
		
		if ([[self screen] isEqual:[[NSScreen screens] objectAtIndex:0]])
		{
			[NSMenu setMenuBarVisible:YES];
			//	[[NSApplication sharedApplication] setPresentationOptions:NSApplicationPresentationDefault];
			
		}
	}
}


- (void)toggleFullscreen {
	if(fullscreen) {
		[self exitFullscreen];
	} else {
		[self enterFullscreen];
	}
}

@end
