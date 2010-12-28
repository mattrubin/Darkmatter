//
//  Camera.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "DMCamera.h"


@implementation DMCamera

- (void)establishPerspectiveAtSize:(NSSize)size {
	glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
	glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
}

- (void)applyAtSize:(NSSize)size {
	[self establishPerspectiveAtSize:size];
}

@end
