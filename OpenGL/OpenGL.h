//
//  OpenGL.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DataTypes.h"


@interface OpenGL : NSObject {}

+ (void)setClearColor:(Color4 *)color;

+ (void) setAlphaBlending: (BOOL) on;
+ (void) enableAlphaBlending;
+ (void) disableAlphaBlending;

@end
