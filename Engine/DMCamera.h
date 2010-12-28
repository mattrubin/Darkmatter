//
//  Camera.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface DMCamera : NSObject {}

- (void)establishPerspectiveAtSize:(NSSize)size;
- (void)applyAtSize:(NSSize)size;

@end
