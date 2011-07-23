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
        [self addQuestion:@"You are" answer:@"Tu es"];
    }
    
    return self;
}

- (void)addQuestion:(NSString *)q answer:(NSString *)a
{
    QuizQuestion *question = [[QuizQuestion alloc] initWithQuestion:q answer:a];
    [questionBank addObject:question];
}

- (QuizQuestion *)getThisQuestion 
{
    QuizQuestion *question = [questionBank objectAtIndex:currentIndex];
    return question;
}

- (QuizQuestion *)getNextQuestion
{
    QuizQuestion *question = [self getThisQuestion];
    currentIndex++;
    return question;
}

- (QuizQuestion *)getRandomQuestion
{
    currentIndex = random() % [questionBank count];
    return [self getNextQuestion];
}

@end
