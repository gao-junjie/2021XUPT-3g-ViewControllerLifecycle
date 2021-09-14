//
//  SecondViewController.m
//  ViewController的生命周期
//
//  Created by mac on 2021/9/14.
//  Copyright © 2021 mac. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    self.view.backgroundColor = [UIColor whiteColor];
    
    _dismissButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_dismissButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_dismissButton setTitle:@"返回" forState:UIControlStateNormal];
        _dismissButton.frame = CGRectMake(100, 300, 100, 100);
    [self.view addSubview:_dismissButton];
}

- (void)loadView{
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear");
}

- (void)press:(UIButton*)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
