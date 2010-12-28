//
//  DMScene.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/28/10.
//  Copyright 2010. All rights reserved.
//

#import "DMScene.h"


@implementation DMScene


#pragma mark Initializers

- (id)init {
	if((self = [super init])){
		layers = [[NSMutableArray alloc] initWithCapacity:3];
	}
	return self;
}


#pragma mark Drawing

- (void)drawAtSize:(NSSize)size {
	NSEnumerator *enumerator = [layers objectEnumerator];
	DMLayer *layer;
	
	while (layer = (DMLayer *)[enumerator nextObject]) {
		[layer drawAtSize:size];
	}
}


#pragma mark Layers

- (BOOL)containsLayer:(DMLayer *)layer {
	return [layers containsObject:layer];
}
- (NSUInteger)layerCount{
	return [layers count];
}
- (DMLayer *)topLayer {
	return (DMLayer *)[layers lastObject];
}
- (DMLayer *)bottomLayer {
	return (DMLayer *)[layers objectAtIndex:0];
}
- (DMLayer *)layerAtIndex:(NSUInteger)index {
	return (DMLayer *)[layers objectAtIndex:index];
}
- (NSUInteger)indexOfLayer:(DMLayer *)layer {
	return [layers indexOfObject:layer];
}

- (void)addLayer:(DMLayer *)layer {
	[layers addObject:layer];
}
- (void)addBottomLayer:(DMLayer *)layer {
	[layers insertObject:layer atIndex:0];
}
- (void)addLayer:(DMLayer *)layer atIndex:(NSUInteger)index {
	[layers insertObject:layer atIndex:index];
}
- (void)removeLayer:(DMLayer *)layer {
	[layers removeObject:layer];
}
- (void)removeTopLayer {
	[layers removeLastObject];
}
- (void)removeBottomLayer {
	[layers removeObjectAtIndex:0];
}
- (void)removeLayerAtIndex:(NSUInteger)index {
	[layers removeObjectAtIndex:index];
}
- (void)removeAllLayers {
	[layers removeAllObjects];
}


#pragma mark Memory management

- (void)dealloc {
	[layers release];
	[super dealloc];
}

@end
