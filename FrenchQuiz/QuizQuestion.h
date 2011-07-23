//
//  QuizQuestion.h
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuizQuestion : NSObject
{
    NSString *question;
    NSString *answer;
}

@property (readonly) NSString *question;
@property (readonly) NSString *answer;

- (id)initWithQuestion:(NSString *)q answer:(NSString *)a;
@end
