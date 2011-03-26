//
//  DMGraphics.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMGraphics.h"


@implementation DMGraphics

#pragma mark Clear

+ (void)setClearColor:(Color4 *)color
{
	glClearColor(color.red, color.green, color.blue, color.alpha);
}
+ (void)setClearDepth:(double)depth
{
	glClearDepth(depth);
}


#pragma mark Alpha

+ (void)setAlphaBlending:(BOOL)on {
	if (on) [[self class] enableAlphaBlending];
	else [[self class] enableAlphaBlending];
}

+ (void)enableAlphaBlending {
	glEnable(GL_BLEND);
	glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}

+ (void)disableAlphaBlending {
	glDisable(GL_BLEND);
}


#pragma mark Depth

+ (void)setDepthTesting:(BOOL)on {
	if (on) [[self class] enableDepthTesting];
	else [[self class] disableDepthTesting];
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
