//
//  DMScene.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/28/10.
//  Copyright 2010. All rights reserved.
//

#pragma once
#import <Cocoa/Cocoa.h>
#import "DMLayer.h"

@interface DMScene : NSObject {
	NSMutableArray *layers;
}

- (void)drawAtSize:(NSSize)size;

- (BOOL)containsLayer:(DMLayer *)layer;
- (NSUInteger)layerCount;
- (DMLayer *)topLayer;
- (DMLayer *)bottomLayer;
- (DMLayer *)layerAtIndex:(NSUInteger)index;
- (NSUInteger)indexOfLayer:(DMLayer *)layer;

- (void)addLayer:(DMLayer *)layer;
- (void)addBottomLayer:(DMLayer *)layer;
- (void)addLayer:(DMLayer *)layer atIndex:(NSUInteger)index;
- (void)removeLayer:(DMLayer *)layer;
- (void)removeTopLayer;
- (void)removeBottomLayer;
- (void)removeLayerAtIndex:(NSUInteger)index;
- (void)removeAllLayers;



@end
