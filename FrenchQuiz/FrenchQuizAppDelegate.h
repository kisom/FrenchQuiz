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
    Quiz *quiz;
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)nextQuestion:(id)sender;
- (IBAction)randomQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FrenchQuizViewController *viewController;
@property (nonatomic, retain) Quiz *quiz;

@end
