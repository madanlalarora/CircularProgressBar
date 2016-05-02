//
//  ViewController.m
//  CircularProgressBar
//
//  Created by Madanlal on 02/05/16.
//  Copyright © 2016 Madanlal Arora. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize circleView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 50, 300, 300)];
    
    circleView.backgroundCircleColor = [UIColor grayColor]; // set only if above property is YES
    circleView.percent = 100; // percent you need to fill up the stroke to
    circleView.timeForFullAnimation = 1; // time in seconds for percent = 100
    circleView.progressIndicatorColor = [UIColor greenColor]; // indicator color
    circleView.lineWidth = 20; // width of the storke
    
    [self.view addSubview:circleView];
    
    [circleView addbackgroundCircle]; // call to add background circle
    
    [circleView animateProgressIndicator]; // call to animate circle
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
