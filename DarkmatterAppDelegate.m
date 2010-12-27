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
	[[NSNotificationCenter defaultCenter] addObserver:self.mainWindow selector:@selector(exitFullscreen) name:@"ExitFullscreen" object:nil];
}

- (IBAction)toggleFullscreen:(id)sender
{
	[mainWindow toggleFullscreen];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app
{
    return YES;
}

- (BOOL)windowShouldClose:(id)sender {
	NSAlert *alert = [[[NSAlert alloc] init] autorelease];
	[alert setMessageText:@"Are you sure you want to quit?"];
	[alert setInformativeText:@"If you quit now, your game may not be saved."];
	[alert addButtonWithTitle:@"OK"];
	[alert addButtonWithTitle:@"Cancel"];
	[alert setAlertStyle:NSWarningAlertStyle];
	[alert beginSheetModalForWindow:mainWindow modalDelegate:self didEndSelector:@selector(alertDidEnd:returnCode:contextInfo:) contextInfo:nil];
	return NO;
}

- (void) alertDidEnd:(NSAlert *)alert returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo {
	if(returnCode==1000)
		[mainWindow close];
}


@end
