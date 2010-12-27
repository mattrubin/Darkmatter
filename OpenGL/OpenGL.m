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

@end
