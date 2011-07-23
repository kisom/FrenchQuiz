//
//  Quiz.h
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuizQuestion.h"

@interface Quiz : NSObject
{
    NSMutableArray *questionBank;
    int currentIndex;
}

@property int currentIndex;

- (void)addQuestion:(NSString *)q answer:(NSString *)a;
- (QuizQuestion *)getThisQuestion;
- (QuizQuestion *)getNextQuestion;
- (QuizQuestion *)getRandomQuestion;
@end
