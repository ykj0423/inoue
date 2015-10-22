//
//  WeddingDateViewController.m
//  inouetest
//
//  Created by 上條芳美 on 2015/10/14.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import "WeddingDateViewController.h"

@interface WeddingDateViewController ()
@end

@implementation WeddingDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.calenderCollection.delegate = self;
    self.calenderCollection.dataSource = self;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    /* 今の時刻を取得する */
    //NSDate *now = [NSDate date];
    
    /* NSCalendarを取得する */
    //NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSGregorianCalendar];
    
    //NSInteger daysOfThisMonth =
    //　 [ calendar rangeOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now ].length;
    
    //NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
    //NSInteger daysOfThisMonth = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now].length;

    
    //- (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;
    
    // calculate number of weeks
    //NSRange *rangeOfWeeks = (NSRange *)[[NSCalendar currentCalendar] rangeOfUnit:NSCalendarUnitWeekOfMonth inUnit:NSCalendarUnitMonth forDate:self.firstDateOfMonth];
    //NSUInteger numberOfWeeks = rangeOfWeeks.length;
    //NSInteger numberOfItems = numberOfWeeks * DaysPerWeek;
    //return numberOfItems;
    //NSLog(@"%d", daysOfThisMonth);
    return 31;//daysOfThisMonth;

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 7;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [self.calenderCollection dequeueReusableCellWithReuseIdentifier:@"CalenderCell" forIndexPath:indexPath];

    //UILabel *label = (UILabel *)[cell viewWithTag:1];
    
    
    
    //DayCell *cell =
    //[collectionView dequeueReusableCellWithReuseIdentifier:ReuseIdentifier
    //                                        forIndexPath:indexPath];
    
    //NSDateFormatter *formatter = [NSDateFormatter new];
    //formatter.dateFormat = @"d";
    
    //label.text = [formatter stringFromDate:[self dateForCellAtIndexPath:indexPath]];
    
    //cell.label.text = [formatter stringFromDate:[self dateForCellAtIndexPath:indexPath]];
    //label.text = @"1";//[NSString stringWithFormat:@"%d",(int)(indexPath.row)];
    //cell.text = @"1";
    //cell.backgroundColor = [UIColor greenColor];
    
    
    return cell;

}


/*- (NSDate *)dateForCellAtIndexPath:(NSIndexPath *)indexPath
{
    // 「月の初日が週の何日目か」を計算する
    NSInteger ordinalityOfFirstDay =
    [[NSCalendar currentCalendar] ordinalityOfUnit:NSCalendarUnitDay
                                            inUnit:NSCalendarUnitWeekOfMonth
                                           forDate:firstDateOfMonth];
    
    // 「月の初日」と「indexPath.item番目のセルに表示する日」の差を計算する
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.day = indexPath.item - (ordinalityOfFirstDay - 1);
    
    NSDate *date =
    [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents
                                                  toDate:firstDateOfMonth
                                                 options:0];
    return date;
}
 */
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
