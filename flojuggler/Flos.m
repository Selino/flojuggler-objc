//
//  Flos.m
//  flojuggler
//
//  Created by Selino Valdes on 10/18/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import "Flos.h"


@implementation Flos

//@synthesize name,length,cycle,startDate;

@dynamic name;
@dynamic length;
@dynamic cycle;
@dynamic startDate;

int makeDays(value) {
    //int a =  value / 1000;
    int b = value / 60;
    int c = b / 60;
    int d = c / 24;

    return d;
}

-(NSString*)getStatus {
    int myLength = [self.length intValue];
    int myCycle = [self.cycle intValue];
    
    NSDate *startDate = self.startDate;
    int epocStartDate = [startDate timeIntervalSince1970];
    int daysEpocStartDate = makeDays(epocStartDate);
    
    NSDate *todaysDate = [NSDate date];
    int epocToday = [todaysDate timeIntervalSince1970];
    int daysEpocToday = makeDays(epocToday);
    
    int daysBetween = 0;
    
    int finalStatus = fmodf((daysEpocToday - daysEpocStartDate), myCycle);
    
    if (finalStatus < myLength) {
        daysBetween = myLength - finalStatus;
        NSString *myRedStatus = [[NSString alloc]initWithFormat: @"On flo for next %d days",daysBetween];
        return myRedStatus;
    } else {
        daysBetween = myCycle - myLength;
        
        if (daysBetween <= 3) {
            NSString *myYellowStatus = [[NSString alloc]initWithFormat:@"%d days from next flo",daysBetween];
            return myYellowStatus;
        } else {
            NSString *myGreenStatus = [[NSString alloc]initWithFormat:@"%d days to next flo",daysBetween];
            return myGreenStatus;
        }
    }
}

@end
