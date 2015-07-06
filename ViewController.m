//
//  ViewController.m
//  Reader
//
//  Created by ssf-2 on 15/7/6.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "ShowContentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)readBegin:(UIButton *)sender {
    
    UIStoryboard *mainSB =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ShowContentViewController *vc =[mainSB instantiateViewControllerWithIdentifier:@"ShowContentViewController"];
    vc.chapter = sender.tag-100;
    [self presentViewController:vc animated:YES completion:^{
        
    }];
    
}

-(void)noYong{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];//响应
    [manager GET:@"http://scdown.jb51.net:8080/yueduqi/txtdown/daomubiji.rar" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject){
        
        NSData *data = operation.responseData;
        NSLog(@"%@",data);
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
        [data writeToFile:[path stringByAppendingString:@"/1"] atomically:YES];
    }failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
