//
//  DressListTableViewCell.h
//  inouetest
//
//  Created by 上條芳美 on 2015/10/14.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DressListTableViewCell : UITableViewCell<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *TableCalender;

-(void)buildTableCalenerView;

@end
