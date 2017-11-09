//
//  SliderView.m
//  customerXibView
//
//  Created by jameskrauser on 2017/11/9.
//  Copyright © 2017年 jameskrauser. All rights reserved.
//

#import "SliderView.h"
@interface SliderView(){
    CGSize _intrinsicContentSize;
}
@end
@implementation SliderView
- (id) initWithFrame:(CGRect)frame
{
    self = [ super initWithFrame:frame ];
    if ( self ){
    //default contruct
        //1. Load .xib
        [[NSBundle mainBundle] loadNibNamed:@"SliderView" owner:self options:nil ];
        //2. Adjust bounds
        NSLog(@"frame: %@" , NSStringFromCGRect(self.view.bounds));
        self.bounds = self.view.bounds;
        _intrinsicContentSize = self.bounds.size;
       
        //3. add as a subview
        [ self addSubview:self.view  ];// add the thirds xib component
        
    }
    return self;
}
- (id ) initWithCoder:(NSCoder *)aDecoder
{
    self = [ super initWithCoder:aDecoder ];
    if ( self  ) {
        //1 load the interface file from .xib
        [ [NSBundle mainBundle] loadNibNamed:@"SliderView" owner:self options:nil ] ;
        
        
        //2 add as subview
         [ self addSubview:self.view];
        
        //3. set the size
        _intrinsicContentSize = self.bounds.size;
        
    }
    return self ;
}
- (IBAction)switchPressed:(id)sender {
}
- (CGSize) intrinsicContentSize {
    return _intrinsicContentSize;
}
@end
