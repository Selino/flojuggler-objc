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

-(NSString*)getStatus {
    //do something
    //this is the formula
    //status = (date - recordDay)%(cycle);
    /*
     
     if (flo < length) {
     // red: x days into
     days = length - flo;
     days <= 1 ? sDayDisplay = " day" : sDayDisplay = " days";
     
     return '<li class=\"red_pred\">' + myObj.name + " will have <span class=\"red\">"+ days + sDayDisplay + "</span> left on her flo on <span class=\"red\">" + showdate.toDateString() +"</span></li>";
     } else {
     // yellow : x days until
     difference = (date - recordDay);
     days = cycle - flo;
     days <= 1 ? sDayDisplay = " day" : sDayDisplay = " days";
     
     if (days <= 3) {
     return '<li class=\"yellow_pred\">' + myObj.name + " will be <span class=\"yellow\">"+ days + sDayDisplay +"</span> from her next flo on <span class=\"yellow\">" + showdate.toDateString() +"</span></li>";
     } else {
     return '<li class=\"green_pred\">' + myObj.name + " will be <span class=\"green\">"+ days + sDayDisplay +"</span> to her next flo on <span class=\"green\">" + showdate.toDateString() +"</span></li>";
     }
     }
     
     */
    
    //int myCycle = [self.cycle intValue];
    //int myLength = [self.length intValue];
    //int myCalc = myCycle + myLength;
    
    int myCycle = [self.cycle intValue];
    
    NSDate *startDate = self.startDate;
    NSTimeInterval epocTi = [startDate timeIntervalSince1970];
    
    NSDate *todaysDate = [NSDate date];
    NSTimeInterval epocTo = [todaysDate timeIntervalSince1970];
    
    int ti = fmodf((epocTo - epocTi), myCycle);
    
    
    return [NSString stringWithFormat:@"%d",ti];
    //return [self.cycle stringValue];
}

@end
