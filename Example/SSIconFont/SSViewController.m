//
//  SSViewController.m
//  SSIconFont
//
//  Created by shenweihang on 01/20/2020.
//  Copyright (c) 2020 shenweihang. All rights reserved.
//

#import "SSViewController.h"
#import "SSIconFont.h"

@interface SSViewController ()

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Icon Font";
    [self initialUI];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initialUI {
    
    UILabel *lbl = SSIconLabelMake(@"\U0000e624", [UIColor blueColor], 40);
    lbl.frame = CGRectMake(0, 100, 40, 40);
    [self.view addSubview:lbl];
    
    UILabel *lbl2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 40, 40)];
    [lbl2 ss_setIconLabelWithInfo:SSIconInfoMake(@"\U0000e624", [UIColor yellowColor], 40)];
    [self.view addSubview:lbl2];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 40, 40)];
    imgView.image = SSIconImageMake(@"\U0000e624", [UIColor redColor], 40);
    [self.view addSubview:imgView];
    
    
}

@end
