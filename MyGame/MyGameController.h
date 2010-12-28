//
//  MyGameController.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DMGameController.h"
#import "DMScene.h"
#import "MyScene.h"
#import "MyMenu.h"

@interface MyGameController : DMGameController {
	DMScene *currentScene;
	MyScene *scene;
	MyMenu *menu;
}

@property (retain) DMScene *currentScene;
@property (retain) MyScene *scene;
@property (retain) MyMenu *menu;

@end
