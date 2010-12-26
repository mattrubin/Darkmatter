//
//  DarkmatterAppDelegate.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GameWindow.h"

@interface DarkmatterAppDelegate : NSObject <NSApplicationDelegate> {
	GameWindow *mainWindow;
}

@property (assign) IBOutlet GameWindow *mainWindow;

- (IBAction)toggleFullscreen:(id)sender;

@end
