//
//  Color4.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Color3;

@interface Color4 : NSObject {
	double red, green, blue, alpha;
}
@property (assign) double red;
@property (assign) double green;
@property (assign) double blue;
@property (assign) double alpha;


- (id)initWithRed:(double)r green:(double)g blue:(double)b alpha:(double)a;
+ (Color4 *)colorWithRed:(double)r green:(double)g blue:(double)b alpha:(double)a;

+ (Color4 *)red;
+ (Color4 *)green;
+ (Color4 *)blue;
+ (Color4 *)cyan;
+ (Color4 *)magenta;
+ (Color4 *)yellow;
+ (Color4 *)black;
+ (Color4 *)white;
+ (Color4 *)clear;

- (Color3 *)color3;

@end
