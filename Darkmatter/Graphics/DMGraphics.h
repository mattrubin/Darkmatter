//
//  DMGraphics.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import "DataTypes.h"


@interface DMGraphics : NSObject {}

+ (void)setClearColor:(Color4 *)color;
+ (void)setClearDepth:(double)depth;

+ (void)setAlphaBlending:(BOOL)on;
+ (void)enableAlphaBlending;
+ (void)disableAlphaBlending;

+ (void)setDepthTesting:(BOOL)on;
+ (void)enableDepthTesting;
+ (void)disableDepthTesting;

@end
