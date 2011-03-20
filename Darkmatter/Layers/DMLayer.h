//
//  Scene.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import "Color4.h"

@interface DMLayer : NSObject {
	Color4 *clearColor;
	float clearDepth;
	NSSize currentSize;
	BOOL clearsOnDraw;
	BOOL clearsDepthBuffer;
}

@property (retain) Color4 *clearColor;
@property (assign) float clearDepth;
@property (assign) NSSize currentSize;
@property (assign) BOOL clearsOnDraw;
@property (assign) BOOL clearsDepthBuffer;

- (void)clearView;
- (void)clearDepthBuffer;
- (void)prepare;
- (void)drawObjects;
- (void)drawAtSize:(NSSize)size;

@end
