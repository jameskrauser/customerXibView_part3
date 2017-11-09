//
//  ViewController.m
//  customerXibView
//
//  Created by jameskrauser on 2017/11/9.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import "ViewController.h"
#import "SliderView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SliderView *sliderView = [ [ SliderView alloc ] init];
    sliderView.backgroundColor = [ UIColor blueColor ];
    
    [self.view addSubview: sliderView ];
    sliderView.center = CGPointMake(10, 50);
    
    // Turn off autosizing masks
    sliderView.translatesAutoresizingMaskIntoConstraints = NO;
    
 
    //1. pin to bottom
    [ self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView
                                                           attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0 ] ];
  
    
    //2. pin to cneter x
    
    [ self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView
                                                           attribute:NSLayoutAttributeCenterX
                                                           relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                           attribute:NSLayoutAttributeCenterX
                                                          multiplier:1.0 constant:0.0] ];
   
    
    
}
@end
