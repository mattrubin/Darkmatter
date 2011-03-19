//
//  Scene3D.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DMLayer.h"
#import "DMPerspectiveCamera.h"

@interface DMLayer3D : DMLayer {
	DMPerspectiveCamera *camera;
}
@property (retain) DMPerspectiveCamera *camera;

@end
