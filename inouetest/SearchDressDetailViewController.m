//
//  SearchDressDetailViewController.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/14.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "SearchDressDetailViewController.h"

@interface SearchDressDetailViewController ()
@end

@implementation SearchDressDetailViewController{
    NSArray *titleArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    titleArray = [NSArray arrayWithObjects:@"商品分類",@"色",@"ブランド",@"シルエット", nil];
    
    _TableSearch.delegate = self;
    _TableSearch.dataSource = self;
    
    //[self.view addSubview:<#(UIView *)#>]
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/**
 * テーブルのセルの数を返す
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [titleArray count];//固定
}
/**
 * 指定されたインデックスパスのセルを作成する
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"SearchDetailCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // セルが作成されていないか?
    if (!cell) { // yes
        // セルを作成
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    
    
    //セルにタイトルを表示
    UILabel *labelTitle = (UILabel *)[cell viewWithTag:1];
    labelTitle.text = [titleArray objectAtIndex:indexPath.row];
    
    //選択された内容を表示（初期は空）
    UILabel *labelDetail = (UILabel *)[cell viewWithTag:2];
    labelDetail.text = [titleArray objectAtIndex:indexPath.row];

    
    return cell;

}

@end
