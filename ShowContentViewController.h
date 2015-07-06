//
//  ShowContentViewController.h
//  Reader
//
//  Created by ssf-2 on 15/7/6.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ChapterType) {
    FirstType,
    SecondType,
    ThirdType,
    FourthType,
    FifthType,
};

@interface ShowContentViewController : UIViewController

@property(nonatomic, assign)ChapterType chapter;

@end
