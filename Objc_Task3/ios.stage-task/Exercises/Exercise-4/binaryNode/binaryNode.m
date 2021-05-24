//
//  binaryNode.m
//  ios.stage-task
//
//  Created by Roman Kobzarev on 24.05.2021.
//

#import <Foundation/Foundation.h>
#import "binaryNode.h"

@implementation binaryNode

-(binaryNode *)initWithData:(NSNumber*)data andLeftNode:(binaryNode*)left andRightNode:(binaryNode*)right {
    self = [super init];
    if (self) {
        _data = data;
        _left = left;
        _right = right;
    }
    return self;
}

+(binaryNode*)initWithArray:(NSMutableArray *)array {
    if (array.count == 0) {
        return nil;
    }
    
    if (array.firstObject == [NSNull null]) {
        [array removeObjectAtIndex:0];
        return nil;
    }
    
    NSNumber *num = array.firstObject;
    [array removeObjectAtIndex:0];
    
    binaryNode *node = [[binaryNode alloc] initWithData:num andLeftNode:[binaryNode initWithArray:array] andRightNode:[binaryNode initWithArray:array]];
    
    return node;
}

@end
