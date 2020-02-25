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

- (void)initialUI {
    
    UILabel *lbl = SSIconLabelMake(@"\U0000e624", [UIColor blueColor], 40);
    lbl.frame = CGRectMake(0, 100, 40, 40);
    [self.view addSubview:lbl];
    
    UILabel *lbl2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 50, 50)];
    [lbl2 ss_setIconLabelWithInfo:SSIconInfoMake(@"\U0000e624", [UIColor blackColor], 50)];
    [self.view addSubview:lbl2];
    
    UILabel *lbl3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 210, 60, 60)];
    lbl3.text = @"\U0000e624";
    lbl3.textColor = [UIColor grayColor];
    lbl3.font = [SSIconFont fontWithSize:60];
    [self.view addSubview:lbl3];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 280, 60, 60)];
    imgView.image = SSIconImageMake(@"\U0000e624", [UIColor redColor], 60);
    [self.view addSubview:imgView];
}

@end
