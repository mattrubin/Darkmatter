//
//  OpenGLView.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "OpenGLView.h"
#import "OpenGL.h"


@implementation OpenGLView
@synthesize controller;

- (void)drawView {
	
	// This method will be called on both the main thread (through -drawRect:) and a secondary thread (through the display link rendering loop)
	// Also, when resizing the view, -reshape is called on the main thread, but we may be drawing on a secondary thread
	// Add a mutex around to avoid the threads accessing the context simultaneously
	CGLLockContext([[self openGLContext] CGLContextObj]);
	[[self openGLContext] makeCurrentContext];
	
	[controller drawAtSize:self.bounds.size];
    glFlush();
	
	CGLUnlockContext([[self openGLContext] CGLContextObj]);
}

- (void)reshape {
	glViewport(0, 0, self.bounds.size.width, self.bounds.size.height);
}


- (CVReturn)getFrameForTime:(const CVTimeStamp*)outputTime
{
	// There is no autorelease pool when this method is called because it will be called from a background thread
	// It's important to create one or you will leak objects
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// Update the animation
	CFAbsoluteTime currentTime = CFAbsoluteTimeGetCurrent();
	[controller advanceTimeBy:(currentTime - controller.renderTime)];
	controller.renderTime = currentTime;
	
	[self drawView];
	
	[pool release];
    return kCVReturnSuccess;
}

// This is the renderer output callback function
static CVReturn MyDisplayLinkCallback(CVDisplayLinkRef displayLink, const CVTimeStamp* now, const CVTimeStamp* outputTime, CVOptionFlags flagsIn, CVOptionFlags* flagsOut, void* displayLinkContext)
{
	CVReturn result = [(OpenGLView*)displayLinkContext getFrameForTime:outputTime];
	return result;
}

- (void)prepareOpenGL {
	[super prepareOpenGL];
	glClear(GL_COLOR_BUFFER_BIT);
	
	//Enable alpha belnding
	[OpenGL enableAlphaBlending];

	[controller gameDidLoad];
	
	
	// Synchronize buffer swaps with vertical refresh rate
    GLint swapInt = 1;
    [[self openGLContext] setValues:&swapInt forParameter:NSOpenGLCPSwapInterval];
	
    // Create a display link capable of being used with all active displays
    CVDisplayLinkCreateWithActiveCGDisplays(&displayLink);
	
    // Set the renderer output callback function
    CVDisplayLinkSetOutputCallback(displayLink, &MyDisplayLinkCallback, self);
	
    // Set the display link for the current renderer
    CGLContextObj cglContext = [[self openGLContext] CGLContextObj];
    CGLPixelFormatObj cglPixelFormat = [[self pixelFormat] CGLPixelFormatObj];
    CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext(displayLink, cglContext, cglPixelFormat);
	
    // Activate the display link
    CVDisplayLinkStart(displayLink);
}

- (void) drawRect:(NSRect)dirtyRect {
	// Ignore if the display link is still running
	if (!CVDisplayLinkIsRunning(displayLink))
		[self drawView];
}

- (BOOL)acceptsFirstResponder { return YES; }
- (BOOL)isOpaque { return YES; }

- (void)keyDown:(NSEvent *)e {
	[controller.inputHandler keyDown:e];
}
- (void)keyUp:(NSEvent *)e {
	[controller.inputHandler keyUp:e];
}


- (void)dealloc {
	CVDisplayLinkStop(displayLink);
    CVDisplayLinkRelease(displayLink);
	[super dealloc];
}

@end
