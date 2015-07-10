//
//  ViewController.m
//  JXGradientNavigationBarExample
//
//  Created by Jianqiu Xiao on 7/10/15.
//  Copyright (c) 2015 Jianqiu Xiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"JXGradientNavigationBar";

    UIWebView * webView = [[UIWebView alloc] init];
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.frame = self.view.bounds;
    [self.view addSubview:webView];

    [webView loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"https://github.com/swordray/JXGradientNavigationBar"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
