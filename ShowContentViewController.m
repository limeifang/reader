//
//  ShowContentViewController.m
//  Reader
//
//  Created by ssf-2 on 15/7/6.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "ShowContentViewController.h"

@interface ShowContentViewController ()
@property (weak, nonatomic) IBOutlet UITextView *contentView;

@end

@implementation ShowContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *name = nil;
    switch (self.chapter) {
        case FirstType:
            name = @"1-4";
            break;
        case SecondType:
            name = @"5";
            break;
        case ThirdType:
            name = @"6";
            break;
        case FourthType:
            name = @"7";
            break;
        case FifthType:
            name = @"8";
            break;
        default:
            break;
    }
    
    path = [path stringByAppendingString:[NSString stringWithFormat:@"/1/%@.txt",name]];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    self.contentView.text = content;
    
    // Do any additional setup after loading the view.
}
- (IBAction)backAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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

@end
