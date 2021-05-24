//Благодарность github.com/kryshe4ka за понятный код, с помощью которого я быстро разобрался с заданием и освежил в памяти работу с деревьями. <3

#import "LevelOrderTraversal.h"
#import "binaryNode/binaryNode.h"

BOOL printLevel(binaryNode *root, int level, NSMutableArray * obj) {
        

            if (root == nil) {
                return NO;
            }
            if (level == 1)
            {
                [obj addObject:root.data];
                return YES;
            }
     
            BOOL left = printLevel([root left], level - 1, obj);
            BOOL right = printLevel([root right], level - 1, obj);
     
            return left || right;
    return YES;
}

NSMutableArray<NSMutableArray*>* levelOrderTraversal(binaryNode * root) {
    
    NSMutableArray<NSMutableArray*>* resultArray = [NSMutableArray new];
    NSMutableArray * obj = [NSMutableArray new];
   
    int level = 1;

    while (printLevel(root, level, obj)) {
        [resultArray addObject:obj];
        obj = [NSMutableArray new];
        level++;
    }
    return resultArray;
}

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    if (tree == nil || tree.count == 0 || (tree.firstObject == [NSNull null])) {
            return @[];
    }
    
    binaryNode* newTree = [binaryNode initWithArray:[tree mutableCopy]];

    return levelOrderTraversal(newTree);
}
