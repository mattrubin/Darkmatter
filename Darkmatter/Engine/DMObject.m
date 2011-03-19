//
//  DMObject.m
//  Darkmatter
//
//  Created by Matt Rubin on 1/5/11.
//  Copyright 2011. All rights reserved.
//

#import "DMObject.h"


@implementation DMObject

@synthesize position;
@synthesize orientation;

#pragma mark Initializers

- (id)init {
	if((self = [super init])){
		position = [Point3 new];
		orientation = [Angle3 new];
		self.z = .1;
	}
	return self;
}


#pragma mark Drawing

- (void)draw {
	glPushMatrix();
	[self applyTransformations];
	[self drawObject];
	glPopMatrix();
}

- (void)applyTransformations {
	glTranslated(position.x, position.y, position.z);
	glRotatef(orientation.yaw, 0, 0, 1);
	glRotatef(orientation.pitch, 1, 0, 0);
	glRotatef(orientation.roll, 0, 1, 0);
}

- (void)drawObject {
	glColor3f(1.0f, 0.65f, 0.45f);

	glBegin(GL_TRIANGLES);
	glVertex3f( 1, 1, 0);
	glVertex3f( 0, 1, 0);
	glVertex3f( 1, 0, 0);
	glVertex3f( 1, 0, 0);
	glVertex3f( 0, 0, 0);
	glVertex3f( 0, 1, 0);
	glEnd();

	
}
	


#pragma mark Setters and getters

- (void)setX:(double)xx { position.x = xx; }
- (void)setY:(double)yy { position.y = yy; }
- (void)setZ:(double)zz { position.z = zz; }
- (double)x { return position.x; }
- (double)y { return position.y; }
- (double)z { return position.z; }


- (void)setYaw:(double)y { orientation.yaw = y; }
- (void)setPitch:(double)p { orientation.pitch = p; }
- (void)setRoll:(double)r { orientation.roll = r; }
- (double)yaw { return orientation.yaw; }
- (double)pitch { return orientation.pitch; }
- (double)roll { return orientation.roll; }


#pragma mark Memory management

- (void)dealloc {
	self.position = nil;
	self.orientation = nil;
	[super dealloc];
}

@end
