//
//  CDOSomeClass.h
//  TestingObjCFromRubyMotion
//
//  Created by Jack Chen on 25/05/13.
//  Copyright (c) 2013 chendo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CDOSomeClass : NSObject

- (NSString *)methodWithNoArguments;
- (NSString *)methodWithOneArgument:(NSString *)argument;
- (NSString *)methodWithKeyedArguments:(NSString *)firstArgument withSecondArgument:(NSString *)secondArgument;

@end
