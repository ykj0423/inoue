//
//  FirstViewController.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/13.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectZero];
    title.font = [UIFont boldSystemFontOfSize:16.0];
    title.textColor = [UIColor magentaColor];
    //title.text = @"ログイン";
    [title sizeToFit];
    self.navigationItem.titleView = title;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
