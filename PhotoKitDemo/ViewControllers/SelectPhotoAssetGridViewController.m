//
//  SelectPhotoAssetGridViewController.m
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/10.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import "SelectPhotoAssetGridViewController.h"
#import "SelectPhotoCollectionView.h"
#import "SelectPhotoCollectionViewCell.h"

@interface SelectPhotoAssetGridViewController ()

@property (nonatomic, strong) SelectPhotoCollectionView *collectionView;

@end

@implementation SelectPhotoAssetGridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.collectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter
- (SelectPhotoCollectionView *)collectionView {
    if (_collectionView == nil) {
        CGFloat cellW = (self.view.frame.size.width - 2*4 +1)/4;
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake(cellW, cellW);
        layout.minimumInteritemSpacing = 0;
        layout.minimumLineSpacing = 2;
        
        _collectionView = [[SelectPhotoCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        [_collectionView registerClass:[SelectPhotoCollectionViewCell class] forCellWithReuseIdentifier:_cellIdentifier];
        _collectionView.contentInset = UIEdgeInsetsMake(5, 0, 44, 0);
        _collectionView.frame = self.view.bounds;
        if (self.assrtsFetchResults != nil) {
            _collectionView.assrtsFetchResults = self.assrtsFetchResults;
        }
        if (self.assetCollection != nil) {
            _collectionView.assetCollection = self.assetCollection;
        }
    }
    return _collectionView;
}

@end
