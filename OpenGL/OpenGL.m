//
//  OpenGL.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "OpenGL.h"


@implementation OpenGL

+ (void)setClearColor:(Color4 *)color {
	glClearColor(color.red, color.green, color.blue, color.alpha);
}


+ (void) setAlphaBlending: (BOOL) on
{
	if (on) {
		glEnable(GL_BLEND);
		glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	} else
		glDisable(GL_BLEND);
}
+ (void)enableAlphaBlending {
	[[self class] setAlphaBlending:YES];
}
+ (void)disableAlphaBlending {
	[[self class] setAlphaBlending:NO];
}

@end
