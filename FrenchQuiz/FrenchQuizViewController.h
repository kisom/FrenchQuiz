//
//  FrenchQuizViewController.h
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quiz.h"

@interface FrenchQuizViewController : UIViewController
{
    Quiz *quiz;
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;

}
@property (nonatomic, retain) Quiz *quiz;

- (IBAction)nextQuestion:(id)sender;
- (IBAction)randomQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
