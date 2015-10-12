//
//  BasicView.m
//  stars
//
//  Created by student on 10/12/15.
//  Copyright © 2015 student. All rights reserved.
//

#import "BasicView.h"

@interface BasicView ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UISlider *alphalSlider;
@property (weak, nonatomic) IBOutlet UISlider *rotateSlider;
@property (weak, nonatomic) IBOutlet UISlider *sacleSlider;

@end

@implementation BasicView

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onShow:(UISwitch *)sender {
    _myView.hidden = !sender.on ;
}

- (IBAction)onAlphaChange:(UISlider *)sender {
    CGFloat alphal = _alphalSlider.value;
    _myView.alpha = alphal;
    
}

-(void) rotate {
    CGFloat rotate = _rotateSlider.value;
    _myView.transform = CGAffineTransformMakeRotation(rotate *M_PI/_rotateSlider.maximumValue);
}
-(void) Scale {
    CGFloat scaler = _sacleSlider.value;
    _myView.transform = CGAffineTransformMakeScale(scaler, scaler);
}

- (IBAction)onRotate:(id)sender {
    [self rotate];
}

- (IBAction)onScaleChange:(id)sender {
    [self Scale];
}

- (IBAction)onColorChange:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            _myView.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            _myView.backgroundColor = [UIColor redColor];
            break;
        case 2:
            _myView.backgroundColor = [UIColor greenColor];
            break;
        case 3:
            _myView.backgroundColor = [UIColor blueColor];
            break;
        default:
            break;
    }
    
}






@end
