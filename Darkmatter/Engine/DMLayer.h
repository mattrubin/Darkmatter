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
	NSSize currentSize;
	BOOL clearsOnDraw;
}
@property (retain) Color4 *clearColor;
@property (assign) NSSize currentSize;
@property (assign) BOOL clearsOnDraw;

- (void)clearView;
- (void)prepare;
- (void)drawObjects;
- (void)drawAtSize:(NSSize)size;

@end
