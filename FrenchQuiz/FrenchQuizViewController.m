//
//  FrenchQuizViewController.m
//  FrenchQuiz
//
//  Created by Kyle Isom on 7/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FrenchQuizViewController.h"

@implementation FrenchQuizViewController
@synthesize quiz;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    quiz = [[Quiz alloc] init];
    NSString *tempQuestion = [[quiz getThisQuestion] question];
    NSLog(@"current question: %@", tempQuestion );
    [questionField setText:tempQuestion];
    
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)showAnswer:(id)sender
{
    QuizQuestion *tempQuestion = [quiz getThisQuestion];
    [answerField setText:[tempQuestion answer]];
}

- (IBAction)nextQuestion:(id)sender
{
    NSString *tempQuestion = [[quiz getNextQuestion] question];
    [questionField setText:tempQuestion];
    [answerField setText:@""];
}

- (IBAction)randomQuestion:(id)sender
{
    NSString *tempQuestion = [[quiz getRandomQuestion] question];
    [questionField setText:tempQuestion];
    [answerField setText:@""];    
}

@end
