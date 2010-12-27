//
//  MyMenu.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "MyMenu.h"


@implementation MyMenu

- (void)prepare {
	self.clearsOnDraw = NO;
}
- (void)drawObjects {
    glColor4f(1.0f, 0.3f, 0.25f, 0.7f);
    glBegin(GL_TRIANGLES);
    {
		glVertex3f( 0, 0, 0);
		glVertex3f( 0, 100, 0);
		glVertex3f( self.currentSize.width, 0, 0);
		glVertex3f( self.currentSize.width, 0, 0);
		glVertex3f( 0, 100, 0);
		glVertex3f( self.currentSize.width, 100, 0);
    }
    glEnd();
}

@end
