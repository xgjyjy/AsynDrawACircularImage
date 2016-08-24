//
//  ViewController.m
//  AsynDrawACircularImage
//
//  Created by XiaoGe on 16/8/24.
//  Copyright © 2016年 XiaoGe. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    iv.center = self.view.center;
    
    [self.view addSubview:iv];
    
    // 设置图像
    UIImage *image = [UIImage imageNamed:@"lufei"];
    //异步绘制
    [image xg_cornerImageWithSize:iv.bounds.size fillColor:[UIColor whiteColor] completion:^(UIImage *image) {
        iv.image = image;
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
