//
//  SliderView.h
//  customerXibView
//
//  Created by jameskrauser on 2017/11/9.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderView : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)switchPressed:(id)sender;

@end
