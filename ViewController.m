//
//  ViewController.m
//  addSingleViewAppTest
//
//  Created by Yoshinori Murata on 2014/06/10.
//  Copyright (c) 2014年 Yoshinori Murata. All rights reserved.
//

#import "ViewController.h"
#import "myViewController.h"

@interface ViewController (){
    int count;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    count = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnMain:(UIStoryboardSegue *)segue{
    //前の画面から値を入手
    myViewController *newVC = [segue sourceViewController];
    count = newVC.myCount;
    //カウントアップ
    count++;
    //表示
    NSLog(@"カウンター<%d>", count);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //もしセグエの名前がmySegueだったら
    if ([[segue identifier] isEqualToString:@"mySegue"]) {
        //カウントアップして
        count++;
        //次の画面へ値を受け渡す
        myViewController *newVC = [segue destinationViewController];
        newVC.myCount = count;
    }
    
}

@end
