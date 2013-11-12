//
//  QuizViewController.m
//  Quiz
//
//  Created by Alex on 12/11/13.
//  Copyright (c) 2013 Machetecoders. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    // Call the init method implemented by the superclass
    if(self){
        // Create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // Add questions and answers to the arrays
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
    }
    
    // return address of new object
    return self;
    
}

- (IBAction)showQuestion:(id)sender
{
    //step to the next question
    currentQuestionIndex++;
    
    // Am i past the last question?
    if (currentQuestionIndex == [questions count]) {
        // go back to first
        currentQuestionIndex = 0;
    }
    
    // get string at that index in the questions array
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // log string to console
    NSLog(@"displaying question: %@", question);
    
    // display string in question field
    [questionField setText:question];
    
    // clear answer field
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    [answerField setText:answer];
    
    
}


@end
