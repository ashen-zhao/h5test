//
//  webVC.m
//  H5Test
//
//  Created by ashen on 2017/5/15.
//  Copyright © 2017年 Ashen. All rights reserved.
//

#import "webVC.h"

@interface webVC ()

@end

@implementation webVC

- (void)viewDidLoad {
    [super viewDidLoad];
    CGSize size = [UIScreen mainScreen].bounds.size;
    UIWebView *web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    NSURL *url = [NSURL URLWithString:self.url];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [web loadRequest:req];
    [self.view addSubview:web];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
