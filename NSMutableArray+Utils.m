//
//  NSMutableArray+Utils.m
//  Intuit
//
//  Created by Глеб Тарасов on 13.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSMutableArray+Utils.h"

@implementation NSMutableArray (Utils)

- (id)popObject
{
    if (self.count == 0)
        return nil;
    
    NSInteger lastIndex = self.count - 1;
    id result = [self objectAtIndex:lastIndex];
    [self removeObjectAtIndex:lastIndex];
    return result;
}

- (id)popFirstObject
{
    if (self.count == 0)
        return nil;
    
    id result = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
    return result;
}

- (id)popRandomObject
{
    NSInteger index = arc4random() % self.count;
    id element = [self objectAtIndex:index];
    [self removeObjectAtIndex:index];
    return element;
}

@end
