//
//  CDOSomeClass.m
//  TestingObjCFromRubyMotion
//
//  Created by Jack Chen on 25/05/13.
//  Copyright (c) 2013 chendo. All rights reserved.
//

#import "CDOSomeClass.h"

@implementation CDOSomeClass

- (NSString *)methodWithNoArguments
{
    return @"foo";
}

- (NSString *)methodWithOneArgument:(NSString *)argument
{
    return argument;
}

- (NSString *)methodWithKeyedArguments:(NSString *)firstArgument withSecondArgument:(NSString *)secondArgument
{
    return [firstArgument stringByAppendingString:secondArgument];
}

@end
