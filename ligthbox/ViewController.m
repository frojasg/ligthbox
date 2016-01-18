//
//  ViewController.m
//  brightness
//
//  Created by Francisco Rojas Gallegos on 1/17/16.
//  Copyright © 2016 Francisco Rojas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UISlider *slicerControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.slicerControl.maximumValue = 1.0;
    self.slicerControl.value = [UIScreen mainScreen].brightness;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBrigthnessChange:(id)sender {
    NSLog(@"brigthness: %f", self.slicerControl.value);
    self.slicerControl.value = [UIScreen mainScreen].brightness = self.slicerControl.value;
}
@end
