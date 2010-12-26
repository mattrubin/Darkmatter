//
//  FullscreenWindow.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "FullscreenWindow.h"


@implementation FullscreenWindow

- (BOOL)canBecomeKeyWindow
{
	return YES;
}

- (NSTimeInterval)animationResizeTime:(NSRect)newWindowFrame
{
	return 0.0;
}

@end
