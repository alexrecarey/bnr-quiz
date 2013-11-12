//
//  QuizViewController.h
//  Quiz
//
//  Created by Alex on 12/11/13.
//  Copyright (c) 2013 Machetecoders. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    // the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;

}
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
