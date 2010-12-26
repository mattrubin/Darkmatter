//
//  DarkmatterAppDelegate.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "DarkmatterAppDelegate.h"

@implementation DarkmatterAppDelegate

@synthesize mainWindow;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	[self.mainWindow center];
}

- (IBAction)toggleFullscreen:(id)sender
{
	[mainWindow toggleFullscreen];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app
{
    return YES;
}

@end
