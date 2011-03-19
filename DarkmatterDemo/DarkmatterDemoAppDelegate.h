//
//  DarkmatterDemoAppDelegate.h
//  DarkmatterDemo
//
//  Created by Matt Rubin on 3/18/11.
//  Copyright 2011 Matt Rubin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DarkmatterDemoAppDelegate : NSObject <NSApplicationDelegate> {
@private
	NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
