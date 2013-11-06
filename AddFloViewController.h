//
//  AddFloViewController.h
//  flojuggler
//
//  Created by Selino Valdes on 11/4/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Flos.h"

@protocol AddFloViewControllerDelegate;

@interface AddFloViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *cycleField;
@property (weak, nonatomic) IBOutlet UITextField *lengthField;
//@property (weak, nonatomic) IBOutlet UITextField *startDateField;
@property (weak, nonatomic) IBOutlet UIDatePicker *startDatePicker;

@property (nonatomic, strong) Flos  *currentFlo;

@property (nonatomic, weak) id <AddFloViewControllerDelegate> delegate;

- (IBAction)cancelFlo:(id)sender;
- (IBAction)saveFlo:(id)sender;

@end

@protocol AddFloViewControllerDelegate

-(void)addFloViewControllerDidSave;
-(void)addFloViewControllerDidCancel:(Flos *)floToDelete;

@end
