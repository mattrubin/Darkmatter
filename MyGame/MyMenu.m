//
//  MyMenu.m
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import "MyMenu.h"


@implementation MyMenu

- (void)drawObjects:(NSSize)size {
    glColor3f(1.0f, 0.3f, 0.25f);
    glBegin(GL_TRIANGLES);
    {
		glVertex3f( 0, 0, 0);
		glVertex3f( 0, 100, 0);
		glVertex3f( size.width, 0, 0);
		glVertex3f( size.width, 0, 0);
		glVertex3f( 0, 100, 0);
		glVertex3f( size.width, 100, 0);
    }
    glEnd();
}

@end
