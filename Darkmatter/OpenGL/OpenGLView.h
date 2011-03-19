//
//  OpenGLView.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import <CoreVideo/CVDisplayLink.h>
#import "DMGameController.h"

@interface OpenGLView : NSOpenGLView {
	DMGameController *controller;
    CVDisplayLinkRef displayLink; //display link for managing rendering thread
}
@property (readwrite, assign) IBOutlet DMGameController *controller;

- (void)drawView;

@end
