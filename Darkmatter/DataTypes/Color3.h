//
//  Color3.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>

@class Color4;

@interface Color3 : NSObject {
	double red, green, blue;
}
@property (assign) double red;
@property (assign) double green;
@property (assign) double blue;
@property (readonly) double luminance;


- (id)initWithRed:(double)r green:(double)g blue:(double)b;
- (id)initWithBrightness:(double)b;
- (id)initWithColor3:(Color3*)c;
- (id)initWithColor4:(Color4*)c;

+ (Color3 *)colorWithRed:(double)r green:(double)g blue:(double)b;

+ (Color3 *)red;
+ (Color3 *)green;
+ (Color3 *)blue;
+ (Color3 *)cyan;
+ (Color3 *)magenta;
+ (Color3 *)yellow;
+ (Color3 *)black;
+ (Color3 *)white;

- (Color4 *)color4;
- (Color4 *)color4WithAlpha:(double)alpha;

@end
