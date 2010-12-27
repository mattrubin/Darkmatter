//
//  Scene.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Color4.h"

@interface Scene : NSObject {
	Color4 *clearColor;
	NSSize currentSize;
	BOOL clearsOnDraw;
}
@property (retain) Color4 *clearColor;
@property (assign) NSSize currentSize;
@property (assign) BOOL clearsOnDraw;

- (void)drawAtSize:(NSSize)size;

@end
