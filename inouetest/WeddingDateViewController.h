//
//  WeddingDateViewController.h
//  inouetest
//
//  Created by 上條芳美 on 2015/10/14.
//  Copyright (c) 2015年 上條芳美. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeddingDateViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>{
    NSDate *firstDateOfMonth;
}
@property (strong, nonatomic) IBOutlet UICollectionView *calenderCollection;

@end
