//
//  ViewController.m
//  XFGOV
//
//  Created by 冠东 陈 on 10/19/15.
//  Copyright © 2015 冠东 陈. All rights reserved.
//

#import "ViewController.h"
#import <SVWebViewController.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:BaseURL]]];
//    
//   // _webView.delegate = self;
//    
//    _webView.scalesPageToFit = YES;
    
   
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
   
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        SVWebViewController *webViewController = [[SVWebViewController alloc] initWithAddress:BaseURL];
        
        
        
        [self presentViewController: [[UINavigationController alloc]initWithRootViewController:webViewController] animated:YES completion:^{
            
        }];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
