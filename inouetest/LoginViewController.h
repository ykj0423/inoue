//
//  LoginViewController.h
//  inouetest
//
//  Created by 上條芳美 on 2015/10/13.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *pickerShop;
@end
