//
//  Scene3D.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PerspectiveCamera.h"


@interface Scene3D : NSObject {
	PerspectiveCamera *camera;
	Color4 *clearColor;
}
@property (retain) PerspectiveCamera *camera;
@property (retain) Color4 *clearColor;

- (void)drawAtSize:(NSSize)size;

@end
