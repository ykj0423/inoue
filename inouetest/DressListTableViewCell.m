//
//  DressListTableViewCell.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/14.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "DressListTableViewCell.h"

@implementation DressListTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)buildTableCalenerView
{

    CGRect frame = CGRectMake(0, 0, 200.0, [UIScreen mainScreen].bounds.size.width);
    self.TableCalender = [[UITableView alloc]initWithFrame:frame];
    
    self.TableCalender.delegate = self;
    self.TableCalender.dataSource = self;
    
    //横スクロールに変更
    self.TableCalender.center = CGPointMake(self.TableCalender.frame.origin.x + self.TableCalender.frame.size.height /2 , self.TableCalender.frame.origin.y + self.TableCalender.frame.size.width / 2);

    self.TableCalender.transform = CGAffineTransformMakeRotation( -M_PI / 2 );
    
    //セルの再利用登録
    [self.TableCalender registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CalenderCell"];

    //tableViewを追加
    [self addSubview:self.TableCalender];

}

/**
 * 指定されたインデックスパスのセルを作成する
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"CalenderCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // セルが作成されていないか?
    if (!cell) { // yes
        // セルを作成
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.contentView.transform = CGAffineTransformMakeRotation( M_PI / 2 );
    // セルにテキストを設定
    // セルの内容はNSArray型の「items」にセットされているものとする
    //cell.textLabel.text = [items objectAtIndex:indexPath.row];
    
    return cell;
}
/**
 * テーブルのセルの数を返す
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // セルの内容はNSArray型の「items」にセットされているものとする
    return 10;//とりあえず
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}
@end
