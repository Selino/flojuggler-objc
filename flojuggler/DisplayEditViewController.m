//
//  DisplayEditViewController.m
//  flojuggler
//
//  Created by Selino Valdes on 11/4/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _nameField.text = [self.currentFlo name];
    _cycleField.text = [[self.currentFlo cycle] stringValue];
    _lengthField.text = [[self.currentFlo length] stringValue];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    _startDatePicker.date = [self.currentFlo startDate];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startEditing:(id)sender {
    _nameField.enabled = YES;
    _cycleField.enabled = YES;
    _lengthField.enabled = YES;
    _startDatePicker.userInteractionEnabled = YES;
    
    _nameField.borderStyle = UITextBorderStyleRoundedRect;
    _cycleField.borderStyle = UITextBorderStyleRoundedRect;
    _lengthField.borderStyle = UITextBorderStyleRoundedRect;
    
    _editButton.hidden = YES;
    _doneButton.hidden = NO;
}
- (IBAction)doneEditing:(id)sender {
    _nameField.enabled = NO;
    _cycleField.enabled = NO;
    _lengthField.enabled = NO;
    _startDatePicker.userInteractionEnabled = NO;
    
    _nameField.borderStyle = UITextBorderStyleNone;
    _cycleField.borderStyle = UITextBorderStyleNone;
    _lengthField.borderStyle = UITextBorderStyleNone;
    
    _editButton.hidden = NO;
    _doneButton.hidden = YES;
    
    _currentFlo.name = _nameField.text;
    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    
    _currentFlo.cycle = [f numberFromString: _cycleField.text];
    _currentFlo.length = [f numberFromString: _lengthField.text];
    _currentFlo.startDate = [_startDatePicker date];
    
    AppDelegate *myApp = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    [myApp saveContext];
    
}
@end
