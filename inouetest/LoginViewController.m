//
//  LoginViewController.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/13.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController(){
    NSMutableArray *shopArray;
}

@end

@implementation LoginViewController{
    //UIPickerView *pickerShop;
    
    //NSMutableArray *shopArray = [NSMutableArray arrayWithObjects:@"ウエディングサロンイノウエ",@"アルステラキタノ",@"スポーレ",@"THE DRAWER",@"本店",@"ウエディングサロンイノウエ大阪本店",@"生田神社会館　衣装室",@"扇屋スポーレ",@"Stylish Wedding", nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pickerShop.delegate = self;
    _pickerShop.dataSource = self;
    //shopArray = @[@"1",@"2",@"3",@"4"];
    //shopArray = [NSArray arrayWithObjects:@"ウエディングサロンイノウエ",@"アルステラキタノ",@"スポーレ",@"THE DRAWER"];
    //,@"本店",@"大阪本店",@"生田神社会館　衣装室",@"扇屋スポーレ",@"Stylish Wedding", nil];
    
    //店コードpicker
    //_pickerShop = [[UIPickerView alloc]init];
    //_pickerShop.center = self.view.center;
    //_pickerShop.delegate = self;
    //_pickerShop.dataSource = self;
    //_pickerShop.frame = CGRectMake(0, 200, 320, 216);
    //_pickerShop.showsSelectionIndicator = YES; //目印あり版

    //[self.view addSubview:pickerShop];
    /*UILabel *title = [[UILabel alloc] initWithFrame:CGRectZero];
    title.font = [UIFont boldSystemFontOfSize:16.0];
    title.textColor = [UIColor magentaColor];
    title.text = @"ログイン";
    [title sizeToFit];
    self.navigationItem.titleView = title;
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
 * pickerに表示する列数を返す
 */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
/*
 * pickerに表示する行数を返す
 */
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 6;
}
/*
 * pickerのサイズを変更
 */
/*- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    switch (component) {
        case 0:
            return 0;
            break;
        case 1:
            return 300;
            break;
        default:
            return 0;
            break;
    }
}*/
/*
 * pickerに表示する値
 */
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    
    //NSArray *shopArray = @[@"ウエディングサロンイノウエ",@"アルステラキタノ",@"スポーレ",@"THE DRAWER"];

    //shopArray = [NSMutableArray arrayWithObjects:@"ウエディングサロンイノウエ",@"アルステラキタノ",@"スポーレ",@"THE DRAWER",@"本店",@"大阪本店",@"生田神社会館　衣装室",@"扇屋スポーレ",@"Stylish Wedding", nil];
    
    switch (row) {
        case 0:
            return @"ウエディングサロンイノウエ";
            break;
        case 1:
            //return [NSString stringWithFormat:@"%ld",row];
            return @"アルステラキタノ";
            break;
        case 2:
            //return [NSString stringWithFormat:@"%ld",row];
            return @"本店";
            break;
        case 3:
            //return [NSString stringWithFormat:@"%ld",row];
            return @"スポーレ";
            break;
        case 4:
            //return [NSString stringWithFormat:@"%ld",row];
            return @"ウエディングサロンイノウエ大阪本店";
            break;
        default:
            return @"";
            break;
    }
    
    
    //UILabel *label = (id)view;
    //if (!label) {
    //    label= [[UILabel alloc]
             
    //label.font = [UIFont boldSystemFontOfSize:16];
    //return label;
}

/* フォントサイズを変更するため */
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    //shopArray = [NSMutableArray arrayWithObjects:@"ウエディングサロンイノウエ",@"アルステラキタノ",@"スポーレ",@"THE DRAWER",@"本店",@"大阪本店",@"生田神社会館　衣装室",@"扇屋スポーレ",@"Stylish Wedding", nil];
    NSString *str;
    switch (row) {
        case 0:
            str = @"ウエディングサロンイノウエ";
            break;
        case 1:
            //return [NSString stringWithFormat:@"%ld",row];
            str = @"アルステラキタノ";
            break;
        case 2:
            //return [NSString stringWithFormat:@"%ld",row];
            str =  @"本店";
            break;
        case 3:
            //return [NSString stringWithFormat:@"%ld",row];
            str = @"スポーレ";
            break;
        case 4:
            //return [NSString stringWithFormat:@"%ld",row];
            str = @"ウエディングサロンイノウエ大阪本店";
            break;
        default:
            str= @"";
            break;
    }
    
   UILabel *label = (id)view;
    
    if (!label) {
     label= [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [pickerView rowSizeForComponent:component].width, [pickerView rowSizeForComponent:component].height)];
    }
    
    //label.text = _datas[row];
    label.text = str;//[shopArray objectAtIndex:row];
    label.font = [UIFont systemFontOfSize:15];
    return label;
    //return shopArray[row];
    
    //return shopArray[row];
}


/*
 * picker選択時
 */

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog (@"%d",row);
    
}

@end
