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
    _myView.transform = CGAffineTransformMakeRotation(_rotateSlider.value *M_PI/_rotateSlider.maximumValue);
}
-(void) Scale {
    
    _myView.transform = CGAffineTransformMakeScale(_sacleSlider.value, _sacleSlider.value);
}

- (IBAction)onRotate:(id)sender {
    [self Scale];
    [self rotate];
}

- (IBAction)onScaleChange:(id)sender {
    [self rotate];
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
