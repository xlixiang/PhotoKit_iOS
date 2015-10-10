//
//  ViewController.m
//  PhotoKitDemo
//
//  Created by lixiang_x on 15/10/9.
//  Copyright © 2015年 lixiang_x. All rights reserved.
//

#import "ViewController.h"
#import "SelectPhotoPickerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectImageButtonAction:(id)sender {
    SelectPhotoPickerViewController *pickerVC = [[SelectPhotoPickerViewController alloc] init];
    [pickerVC showSelectPhotoPickerVC:self];
}

@end
