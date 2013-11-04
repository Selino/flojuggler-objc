//
//  Flos.m
//  flojuggler
//
//  Created by Selino Valdes on 10/18/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import "Flos.h"


@implementation Flos

@synthesize name,length,cycle,startDate;

//@dynamic name;
//@dynamic length;
//@dynamic cycle;
//@dynamic startDate;

-(int)selinoMethod:(int)number {
    
    number = number + 10;
    NSLog(@"Here is my %i",number);
    return number;
}

@end
