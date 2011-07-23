//
//  FrenchQuizAppDelegate.h
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quiz.h"

@class FrenchQuizViewController;

@interface FrenchQuizAppDelegate : UIResponder <UIApplicationDelegate>
{

}



@property (retain, nonatomic) UIWindow *window;
@property (strong, nonatomic) FrenchQuizViewController *viewController;

@end
