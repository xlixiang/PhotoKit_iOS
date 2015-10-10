//
//  SelectPhotoAssetGridViewController.h
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/10.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Photos;

@interface SelectPhotoAssetGridViewController : UIViewController

@property (strong) PHFetchResult *assrtsFetchResults;
@property (strong) PHAssetCollection *assetCollection;

@end
