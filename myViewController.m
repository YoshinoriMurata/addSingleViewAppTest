//
//  myViewController.m
//  addSingleViewAppTest
//
//  Created by Yoshinori Murata on 2014/06/10.
//  Copyright (c) 2014年 Yoshinori Murata. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()

@end

@implementation myViewController
@synthesize myCount;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    //２つ目の画面を表示する時、データを表示する
    NSLog(@"１つ目の画面からのデータ<%d>",myCount);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
