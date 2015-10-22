//
//  ClipViewController.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/15.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "ClipViewController.h"
#import "DressCell.h"//カスタムセル（商品）

@interface ClipViewController (){
    NSArray *rows;
}

@end

@implementation ClipViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    rows = @[@"a",@"b",@"c"];

    _tableClip.delegate = self;
    _tableClip.dataSource = self;
    
    UINib *nib = [UINib nibWithNibName:@"DressCell" bundle:nil];
    [ _tableClip registerNib:nib forCellReuseIdentifier:@"Cell"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return rows.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    DressCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.labelHincd.text = rows[indexPath.row];
    UIImage *image = [UIImage imageNamed:@"sample1.jpg"];
    [cell.imgHin setImage:image];

    return cell;

}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self performSegueWithIdentifier:@"pushDetail" sender:_tableClip];
    
}
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
