//
//  AddFloViewController.m
//  flojuggler
//
//  Created by Selino Valdes on 11/4/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import "AddFloViewController.h"
#import "Flos.h"

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
	// read newly created object values into fields except for date picker which defaults to today after loading the view.
    _nameField.text = [self.currentFlo name];
    _cycleField.text = [[self.currentFlo cycle] stringValue];
    _lengthField.text = [[self.currentFlo length] stringValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelFlo:(id)sender {
    // dismiss and remove the object
    [self.delegate addFloViewControllerDidCancel:[self currentFlo]];
}

- (IBAction)saveFlo:(id)sender {
    // dismiss the view and save the context
    [self.currentFlo setName:_nameField.text];
    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myCycle = [f numberFromString:_cycleField.text];
    [self.currentFlo setCycle: myCycle];
    
    NSNumberFormatter * l = [[NSNumberFormatter alloc] init];
    [l setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber * myLength = [l numberFromString:_lengthField.text];
    [self.currentFlo setLength: myLength];
    [self.currentFlo setStartDate:[_startDatePicker date]];
    [self.delegate addFloViewControllerDidSave];
}
@end
