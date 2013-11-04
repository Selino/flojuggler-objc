//
//  Flos.h
//  flojuggler
//
//  Created by Selino Valdes on 10/18/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Flos : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * length;
@property (nonatomic, retain) NSNumber * cycle;
@property (nonatomic, retain) NSDate * startDate;

-(int)selinoMethod:(int)number;

@end
