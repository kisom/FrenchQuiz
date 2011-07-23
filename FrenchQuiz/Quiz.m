//
//  Quiz.m
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Quiz.h"

@implementation Quiz
@synthesize currentIndex;

- (id)init
{
    self = [super init];
    if (self) {
        questionBank = [[NSMutableArray alloc] init];
        currentIndex = 0;
        [self addQuestion:@"I am" answer:@"Je suis"];
        [self addQuestion:@"You (informal) are" answer:@"Tu es"];
        [self addQuestion:@"He is" answer:@"Il est"];
        [self addQuestion:@"She is" answer:@"Elle est"];
        [self addQuestion:@"We are" answer:@"Nous somme / on est"];
        [self addQuestion:@"You (formal) are" answer:@"Vous etre"];
        [self addQuestion:@"They are (masculine)" answer:@"Ils sont"];
        [self addQuestion:@"They are (feminine)" answer:@"Elles sont"];

        [self addQuestion:@"I have" answer:@"J'ai"];
        [self addQuestion:@"You (informal) have" answer:@"Tu as"];
        [self addQuestion:@"He has" answer:@"Il a"];
        [self addQuestion:@"She has" answer:@"Elle a"];
        [self addQuestion:@"We have" answer:@"Nous avons / on a"];
        [self addQuestion:@"You (formal) have" answer:@"Vous avez"];
        [self addQuestion:@"They have (masculine)" answer:@"Ils ont"];
        [self addQuestion:@"They have (feminine)" answer:@"Elles ont"];

    }
    
    return self;
}

- (void)addQuestion:(NSString *)question answer:(NSString *)answer
{
    QuizQuestion *tempQuestion = [[QuizQuestion alloc] 
                                  initWithQuestion:question 
                                  answer:answer];
    [questionBank addObject:tempQuestion];
}

- (QuizQuestion *)getThisQuestion 
{
    QuizQuestion *question = [questionBank objectAtIndex:currentIndex];
    return question;
}

- (QuizQuestion *)getNextQuestion
{
    currentIndex++;
    
    if (currentIndex == [questionBank count])
        currentIndex = 0;

    QuizQuestion *question = [self getThisQuestion];
    return question;
}

- (QuizQuestion *)getRandomQuestion
{
    currentIndex = random() % [questionBank count];
    return [self getNextQuestion];
}

@end
