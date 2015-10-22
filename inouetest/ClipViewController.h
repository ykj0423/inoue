//
//  ClipViewController.h
//  inouetest
//
//  Created by 上條芳美 on 2015/10/15.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClipViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableClip;

@end
