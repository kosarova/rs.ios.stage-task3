//
//  binaryNode.h
//  ios.stage-task
//
//  Created by Roman Kobzarev on 24.05.2021.
//

#ifndef binaryNode_h
#define binaryNode_h

@interface binaryNode : NSObject
    
@property binaryNode *left;
@property binaryNode *right;
@property NSNumber *data;

-(binaryNode *)initWithData:(NSNumber *)data andLeftNode:(binaryNode *)left andRightNode:(binaryNode *)right;
+(binaryNode*)initWithArray:(NSMutableArray *)array;

@end

#endif /* binaryNode_h */
