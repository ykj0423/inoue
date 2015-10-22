//
//  DressCategoryViewController.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/14.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "DressCategoryViewController.h"

@interface DressCategoryViewController ()

@end

@implementation DressCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.tableCategory.delegate = self;
    self.tableCategory.dataSource = self;
    
    sectionList = [NSMutableArray arrayWithObjects:@"ウエディングドレス",@"カクテルドレス",@"花嫁和装",@"その他花嫁衣装", nil];

    NSArray *wedding = [NSArray arrayWithObjects:@"豪華",@"ｵｰｿﾄﾞｯｸｽ",@"シンプル",@"プリティ",@"桂由美",nil];
    NSArray *cocktail = [NSArray arrayWithObjects:@"豪華",@"ｵｰｿﾄﾞｯｸｽ",@"シンプル",@"プリティ",@"桂由美",nil];
    NSArray *kimono = [NSArray arrayWithObjects:@"白無垢",@"色打掛",@"大振袖",@"プレゼント",@"他花嫁和装　",nil];
    NSArray *others = [NSArray arrayWithObjects:@"他花嫁衣装",nil];
    //セルの項目をまとめる
    NSArray *alldatas = [NSArray arrayWithObjects:wedding,cocktail,kimono,others,nil];
    dataSource = [NSDictionary dictionaryWithObjects:alldatas forKeys:sectionList];

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

//テーブル全体のセクションの数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [sectionList count];
}

//セクション名
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [sectionList objectAtIndex:section];
}

//セクションの項目数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *sectionName = [sectionList objectAtIndex:section];
    return [[dataSource objectForKey:sectionName]count];
}

//セルのインスタンス
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // セルが作成されていないか?
    if (!cell) { // yes
        // セルを作成
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // セルにテキストを設定
    // セルの内容はNSArray型の「items」にセットされているものとする
    //cell.textLabel.text = [items objectAtIndex:indexPath.row];
    //セクション名を取得する
    NSString *sectionName = [sectionList objectAtIndex:indexPath.section];
    //セクション名をキーにしてそのセクションの項目を全て取得
    NSArray *items = [dataSource objectForKey:sectionName];

    cell.textLabel.text = [items objectAtIndex:indexPath.row];
    
    return cell;

}

//セクション周りの色を変える
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UILabel *label = [UILabel new];
    //UIColor *color = [UIColor colorWithRed:235.0 green:51.0 blue:104.0 alpha:1.0];
    label.backgroundColor = [UIColor colorWithRed:255.0 green:50.0 blue:100.0 alpha:1];//color;
    label.font = [UIFont systemFontOfSize:15];
    label.text = [sectionList objectAtIndex:section];
    return label;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; // 選択状態の解除をします。
    
    //AnotherViewController *anotherViewController = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
    //anotherViewController.title = @"下の階層です";
    //[self.navigationController pushViewController:anotherViewController animated:YES];
    //[anotherViewController release];
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
