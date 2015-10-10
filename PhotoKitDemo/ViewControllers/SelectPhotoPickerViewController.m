//
//  SelectPhotoPickerViewController.m
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/9.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import "SelectPhotoPickerViewController.h"
#import "SelectPhotoNavigationViewController.h"
#import "SelectPhotoPickerGroupViewController.h"

@interface SelectPhotoPickerViewController ()

@end

@implementation SelectPhotoPickerViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initNavigationController];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"SelectPhotoPickerViewController dealloc");
}
#pragma mark - init
- (void)initNavigationController {
    SelectPhotoPickerGroupViewController *groupVC = [[SelectPhotoPickerGroupViewController alloc] init];
    SelectPhotoNavigationViewController *navigationVC = [[SelectPhotoNavigationViewController alloc] initWithRootViewController:groupVC];
    navigationVC.view.frame = self.view.bounds;
    [self addChildViewController:navigationVC];
    [self.view addSubview:navigationVC.view];
}
#pragma mark - 
- (void)showSelectPhotoPickerVC:(UIViewController *)VC {
    __weak typeof (VC) weakVC = VC;
    if (weakVC != nil) {
        [weakVC presentViewController:self animated:YES completion:nil];
    }
}
@end
