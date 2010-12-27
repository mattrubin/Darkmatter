//
//  Color3.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Color4;

@interface Color3 : NSObject {
	double red, green, blue;
}
@property (assign) double red;
@property (assign) double green;
@property (assign) double blue;


- (id)initWithRed:(double)r green:(double)g blue:(double)b;
+ (Color3 *)colorWithRed:(double)r green:(double)g blue:(double)b;

+ (Color4 *)red;
+ (Color4 *)green;
+ (Color4 *)blue;
+ (Color4 *)cyan;
+ (Color4 *)magenta;
+ (Color4 *)yellow;
+ (Color4 *)black;
+ (Color4 *)white;

- (Color4 *)color4;
- (Color4 *)color4WithAlpha:(double)alpha;

@end
