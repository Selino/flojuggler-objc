//
//  DisplayEditViewController.h
//  flojuggler
//
//  Created by Selino Valdes on 11/4/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Flos.h"

@interface DisplayEditViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *cycleField;
@property (weak, nonatomic) IBOutlet UITextField *lengthField;
@property (weak, nonatomic) IBOutlet UITextField *startDateField;

@property (nonatomic, strong) Flos *currentFlo;

@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

- (IBAction)doneEditing:(id)sender;
- (IBAction)startEditing:(id)sender;

@end
