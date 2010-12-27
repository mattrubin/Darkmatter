//
//  Scene2D.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "OrthoCamera.h"
#import "Scene.h"

@interface Scene2D : Scene {
	OrthoCamera *camera;
}
@property (retain) OrthoCamera *camera;

@end
