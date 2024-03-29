//
//  FlosTableViewController.h
//  flojuggler
//
//  Created by Selino Valdes on 10/18/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddFloViewController.h"

@interface FlosTableViewController : UITableViewController <AddFloViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext; //reference to managedobject so we can save, load, etc.
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
