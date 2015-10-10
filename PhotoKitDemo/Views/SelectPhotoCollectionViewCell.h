//
//  SelectPhotoCollectionViewCell.h
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/10.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *const _cellIdentifier = @"collectionCell";

@interface SelectPhotoCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) UIImage *cellImage;

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView cellForItemAtIndex:(NSIndexPath *)indexPath;

@end
