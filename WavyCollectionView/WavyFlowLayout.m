//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Larry Luk on 2017-11-16.
//  Copyright © 2017 Larry Luk. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

- (void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    // Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    
    for (UICollectionViewLayoutAttributes *attr in superAttrs) {
        
        CGFloat randomValue = arc4random_uniform(self.collectionView.bounds.size.height-25)+25;
        
        CGPoint newLocation = CGPointMake(attr.center.x, randomValue);
        UICollectionViewLayoutAttributes *newattr = [attr copy];
        newattr.center = newLocation;
        [newAttrs addObject:newattr];
    }
    

    
    
    
    
    
    return newAttrs;
}

@end
