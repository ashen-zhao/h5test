//
//  wkVC.m
//  H5Test
//
//  Created by ashen on 2017/5/15.
//  Copyright © 2017年 Ashen. All rights reserved.
//

#import "wkVC.h"

#import <WebKit/WebKit.h>

@interface wkVC ()

@end

@implementation wkVC

- (void)viewDidLoad {
    [super viewDidLoad];
    CGSize size = [UIScreen mainScreen].bounds.size;
    WKWebView *wk = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    NSURL *url = [NSURL URLWithString:self.url];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [wk loadRequest:req];
    
    [self.view addSubview:wk];
}

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
