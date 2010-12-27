//
//  Scene3D.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Scene.h"
#import "PerspectiveCamera.h"

@interface Scene3D : Scene {
	PerspectiveCamera *camera;
}
@property (retain) PerspectiveCamera *camera;

@end
