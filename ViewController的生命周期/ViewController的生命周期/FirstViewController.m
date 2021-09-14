//
//  FirstViewController.m
//  ViewController的生命周期
//
//  Created by mac on 2021/9/14.
//  Copyright © 2021 mac. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton* dismissButton = [UIButton buttonWithType:UIButtonTypeSystem];
    dismissButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dismissButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [dismissButton setTitle:@"跳转" forState:UIControlStateNormal];
        dismissButton.frame = CGRectMake(100, 300, 100, 100);
    [self.view addSubview:dismissButton];
    
}
- (void)press:(UIButton*)button {
    SecondViewController* secondViewController = [[SecondViewController alloc] init];
    secondViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:secondViewController animated:NO completion:nil];
}


@end
