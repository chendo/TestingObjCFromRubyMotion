//
//  NSObject+RubyMotionHacks.m
//  TestingObjCFromRubyMotion
//
//  Created by Jack Chen on 25/05/13.
//  Copyright (c) 2013 chendo. All rights reserved.
//

#import "NSObject+RubyMotionHacks.h"

@implementation NSObject (RubyMotionHacks)

- (id)runMethod:(NSArray *)arguments
{
    NSParameterAssert(arguments.count > 0 && arguments.count < 4);
    
    SEL selector = NSSelectorFromString(arguments[0]);
    
    if (arguments.count == 1) {
        return [self performSelector:selector];
    }
    
    if (arguments.count == 2) {
        return [self performSelector:selector withObject:arguments[1]];
    }
    
    if (arguments.count == 3) {
        return [self performSelector:selector withObject:arguments[1] withObject:arguments[2]];
    }
    
    return nil;
}

@end
