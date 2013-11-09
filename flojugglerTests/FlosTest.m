//
//  FlosTest.m
//  flojuggler
//
//  Created by Selino Valdes on 10/24/13.
//  Copyright (c) 2013 Selino Valdes. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Flos.h"

@interface FlosTest : XCTestCase

@end

@implementation FlosTest

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMakeDays
{
    int myNewNumber = makeDays(1383337499);
    XCTAssert(myNewNumber == 16010, @"Days are not calculating correctly.");
}

@end
