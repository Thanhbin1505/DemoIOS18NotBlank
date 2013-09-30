//
//  ViewController.m
//  IAmRich
//
//  Created by techmaster on 9/23/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamRich;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.ruby.alpha = 0;
    self.iamRich.alpha = 0;
}

- (void) viewWillAppear:(BOOL)animated
{    
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            self.iamRich.center = CGPointMake(self.iamRich.center.x, 350);
            self.iamRich.alpha = 1;
        
        } completion:nil];
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapOnHelloWorld:(UIButton *)sender {
    NSString *steve = @"Steve Jobs";
    NSLog(@"Hello World of %@", steve);
    
    float tempCelcius = 80.5;
    float tempFareinheight = ()
}

@end
