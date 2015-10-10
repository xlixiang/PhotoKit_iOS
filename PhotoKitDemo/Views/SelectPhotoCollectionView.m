//
//  SelectPhotoCollectionView.m
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/10.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import "SelectPhotoCollectionView.h"
#import "SelectPhotoCollectionViewCell.h"
@interface SelectPhotoCollectionView ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong) PHCachingImageManager *imageManager;
@end

@implementation SelectPhotoCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.dataSource = self;
        self.delegate = self;
        self.imageManager = [[PHCachingImageManager alloc] init];
        [self resetCachedAssets];
    }
    return self;
}

#pragma mark - Asset Caching

- (void)resetCachedAssets
{
    [self.imageManager stopCachingImagesForAllAssets];
//    self.previousPreheatRect = CGRectZero;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSInteger count = self.assrtsFetchResults.count;
    return count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SelectPhotoCollectionViewCell *cell = [SelectPhotoCollectionViewCell cellWithCollectionView:collectionView cellForItemAtIndex:indexPath];
    
    PHAsset *asset = self.assrtsFetchResults[indexPath.item];
    
    [self.imageManager requestImageForAsset:asset targetSize:CGSizeMake(100, 100) contentMode:PHImageContentModeAspectFill options:nil resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:cell.bounds];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.clipsToBounds = YES;
        imageView.image = result;
        [cell.contentView addSubview:imageView];
    }];
    
    
    return cell;
}

@end
