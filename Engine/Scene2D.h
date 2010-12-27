//
//  Scene2D.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OrthoCamera.h"
#import "Color4.h"

@interface Scene2D : NSObject {
	OrthoCamera *camera;
	Color4 *clearColor;
}
@property (retain) OrthoCamera *camera;
@property (retain) Color4 *clearColor;

- (void)drawAtSize:(NSSize)size;

@end
