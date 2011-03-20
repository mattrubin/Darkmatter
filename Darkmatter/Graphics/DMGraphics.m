//
//  DMGraphics.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMGraphics.h"


@implementation DMGraphics

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

+ (void)enableDepthTesting {
	glEnable(GL_DEPTH_TEST);
	glDepthFunc(GL_LEQUAL);
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
}

+ (void)disableDepthTesting {
	glDisable(GL_DEPTH_TEST);
}


@end
