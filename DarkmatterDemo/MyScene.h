//
//  MyScene.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import <Darkmatter/DMLayer3D.h>
#import <Darkmatter/DMObject.h>

@interface MyScene : DMLayer3D {
	DMObject *obj;
}
@property (readonly) DMObject *obj;

@end
