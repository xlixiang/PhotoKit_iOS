//
//  SelectPhotoCollectionViewCell.m
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/10.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import "SelectPhotoCollectionViewCell.h"

@implementation SelectPhotoCollectionViewCell
+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView cellForItemAtIndex:(NSIndexPath *)indexPath {
    SelectPhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:_cellIdentifier forIndexPath:indexPath];
    if ([[cell.contentView.subviews lastObject] isKindOfClass:[UIImageView class]]) {
        [[cell.contentView.subviews lastObject] removeFromSuperview];
    }
    return cell;
}

@end
