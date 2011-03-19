//
//  Scene2D.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import "DMOrthoCamera.h"
#import "DMLayer.h"

@interface DMLayer2D : DMLayer {
	DMOrthoCamera *camera;
}
@property (retain) DMOrthoCamera *camera;

@end
