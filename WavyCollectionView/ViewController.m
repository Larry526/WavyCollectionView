//
//  ViewController.m
//  WavyCollectionView
//
//  Created by Larry Luk on 2017-11-16.
//  Copyright © 2017 Larry Luk. All rights reserved.
//

#import "ViewController.h"
#import "WavyFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *wavyCollectionView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 40;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *label = (UILabel*)[cell viewWithTag:1];

    label.text = [NSString stringWithFormat:@"%ld - %ld",indexPath.section, indexPath.item];
    
    
    return cell;
    
}

@end
