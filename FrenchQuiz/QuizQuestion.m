//
//  QuizQuestion.m
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "QuizQuestion.h"

@implementation QuizQuestion
@synthesize question, answer;

- (id)initWithQuestion:(NSString *)q answer:(NSString *)a
{
    self = [super init];
    answer = a;
    question = q;
    
    return self;
}

- (id)init
{
    NSAssert(YES, @"Please to be usink initWithQuestion instead of init...");
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
