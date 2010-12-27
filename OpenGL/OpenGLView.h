//
//  OpenGLView.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreVideo/CVDisplayLink.h>
#import "GameController.h"

@interface OpenGLView : NSOpenGLView {
	GameController *controller;
    CVDisplayLinkRef displayLink; //display link for managing rendering thread
}
@property (readwrite, assign) IBOutlet GameController *controller;

- (void)drawView;

@end
