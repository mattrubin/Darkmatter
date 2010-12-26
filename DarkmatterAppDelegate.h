//
//  DarkmatterAppDelegate.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010 Stanford University. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DarkmatterAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
