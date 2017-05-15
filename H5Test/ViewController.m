//
//  ViewController.m
//  H5Test
//
//  Created by ashen on 2017/5/15.
//  Copyright © 2017年 Ashen. All rights reserved.
//

#import "ViewController.h"
#import "wkVC.h"
#import "webVC.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *url;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"H5测试";
}

- (IBAction)uiwebview:(id)sender {
    webVC * web = [[webVC alloc] init];
    web.url = self.url.text;
    [self.navigationController pushViewController:web animated:YES];
}
- (IBAction)wkwebview:(id)sender {
    wkVC *wk = [[wkVC alloc] init];
    wk.url = self.url.text;
    [self.navigationController pushViewController:wk animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
