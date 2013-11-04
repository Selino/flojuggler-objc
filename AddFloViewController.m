//
//  AddFloViewController.m
//  flojuggler
//
//  Created by Selino Valdes on 11/4/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import "AddFloViewController.h"
#import "Flos.h"

@interface AddFloViewController ()

@end

@implementation AddFloViewController

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
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    _startDateField.text =[dateFormat stringFromDate:[self.currentFlo startDate]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelFlo:(id)sender {
    // dismiss and remove the object
    NSLog(@"testing rocks");
    [self.delegate addFloViewControllerDidCancel:[self currentFlo]];
}

- (IBAction)saveFlo:(id)sender {
    // dismiss and save the context
    [self.currentFlo setName:_nameField.text];
    //[self.currentFlo setCycle:_cycleField.text];
    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myNumber = [f numberFromString:_cycleField.text];
    
    [self.currentFlo setCycle: myNumber];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    [self.currentFlo setStartDate:[dateFormat dateFromString:_startDateField.text]];
    
    [self.delegate addFloViewControllerDidSave];
}
@end
