//
//  Color4.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/26/10.
//  Copyright 2010. All rights reserved.
//

#import "Color4.h"
#import "Color3.h"

@implementation Color4

#pragma mark Properties
@synthesize red;
@synthesize green;
@synthesize blue;
@synthesize alpha;

- (double)luminance {
	//coefficients taken from libst/STColor3f.cpp
	return .2126f*self.red + .7152f*self.green + .0722f*self.blue;
}

#pragma mark Initializers

- (id)init {
	if((self = [super init])){
		red   = 0;
		green = 0;
		blue  = 0;
		alpha = 0;
	}
	return self;
}

- (id)initWithRed:(double)r green:(double)g blue:(double)b {
	if((self = [super init])){
		red   = r;
		green = g;
		blue  = b;
		alpha = 1;
	}
	return self;
}

- (id)initWithRed:(double)r green:(double)g blue:(double)b alpha:(double)a {
	if((self = [super init])){
		red   = r;
		green = g;
		blue  = b;
		alpha = a;
	}
	return self;
}

- (id)initWithBrightness:(double)b {
	if((self = [super init])){
		red   = b;
		green = b;
		blue  = b;
		alpha = 1;
	}
	return self;
}


- (id)initWithColor3:(Color3*)c {
	if((self = [super init])){
		red   = c.red;
		green = c.green;
		blue  = c.blue;
		alpha = 1;
	}
	return self;
}

- (id)initWithColor4:(Color4*)c {
	if((self = [super init])){
		red   = c.red;
		green = c.green;
		blue  = c.blue;
		alpha = c.alpha;
	}
	return self;
}



#pragma mark Class methods

+ (Color4 *)colorWithRed:(double)r green:(double)g blue:(double)b alpha:(double)a {
	return [[[Color4 alloc] initWithRed:r green:g blue:b alpha:a] autorelease];
}


#pragma mark Color presets

+ (Color4 *)red {
	return [Color4 colorWithRed:1 green:0 blue:0 alpha:1];
}
+ (Color4 *)yellow {
	return [Color4 colorWithRed:1 green:1 blue:0 alpha:1];
}
+ (Color4 *)green {
	return [Color4 colorWithRed:0 green:1 blue:0 alpha:1];
}
+ (Color4 *)cyan {
	return [Color4 colorWithRed:0 green:1 blue:1 alpha:1];
}
+ (Color4 *)blue {
	return [Color4 colorWithRed:0 green:0 blue:1 alpha:1];
}
+ (Color4 *)magenta {
	return [Color4 colorWithRed:1 green:0 blue:1 alpha:1];
}
+ (Color4 *)black {
	return [Color4 colorWithRed:0 green:0 blue:0 alpha:1];
}
+ (Color4 *)white {
	return [Color4 colorWithRed:1 green:1 blue:0 alpha:1];
}
+ (Color4 *)clear {
	return [Color4 colorWithRed:0 green:0 blue:0 alpha:0];
}


#pragma mark Color3 converter

- (Color3 *)color3 {
	return [Color3 colorWithRed:self.red green:self.green blue:self.blue];
}


#pragma mark Description

-(NSString *)description {
	return [NSString stringWithFormat:@"%@[r:%f g:%f b:%f a:%f]", [self class], self.red, self.green, self.blue, self.alpha];
}

@end
