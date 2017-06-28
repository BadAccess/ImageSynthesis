//
//  ViewController.m
//  ImageSynthesis
//
//  Created by ZhengWei on 2017/6/23.
//  Copyright © 2017年 ZhengWei. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image1 = [UIImage imageNamed:@"image.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"image.jpg"];
    NSString *string = @"我是猪";
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
    UIGraphicsBeginImageContext(size);
    [image1 drawInRect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height)];
    [image2 drawInRect:CGRectMake(0, 300, 200,200)];
    [string drawInRect:CGRectMake(0, 200, 200, 200) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor redColor]}];
    UIImage *ZImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    imageV.image = ZImage;
    [self.view addSubview:imageV];
    
}

- (void)abd{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
