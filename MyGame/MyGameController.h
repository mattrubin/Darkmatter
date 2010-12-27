//
//  MyGameController.h
//  Darkmatter
//
//  Created by Matt Rubin on 12/27/10.
//  Copyright 2010. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GameController.h"
#import "MyScene.h"
#import "MyMenu.h"

@interface MyGameController : GameController {
	MyScene *scene;
	MyMenu *menu;
}

@property (retain) MyScene *scene;
@property (retain) MyMenu *menu;

@end
