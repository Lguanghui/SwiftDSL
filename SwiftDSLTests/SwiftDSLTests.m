//
//  SwiftDSLTests.m
//  SwiftDSLTests
//
//  Created by 梁光辉 on 2023/7/25.
//

#import <XCTest/XCTest.h>
#import "SwiftDSLTests-Swift.h"

@interface SwiftDSLTests : XCTestCase

@end

@implementation SwiftDSLTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testAPI {
    SwiftDSL.defaultConfig.A().B(@"123").C(@"456", 789);
}

@end
