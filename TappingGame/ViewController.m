//
//  ViewController.m
//  TappingGame
//
//  Created by Jason Williams on 2016-01-18.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timerInt = 10;
    tapInt = 0;
    
    self.tapButtonOutlet.enabled = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startGame:(id)sender {
    
    if (timerInt == 10) {
        
        tapInt = 0;
        
        self.tapButtonOutlet.enabled = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(StartCounter) userInfo:nil repeats:YES];
    }
}

-(void)StartCounter {
    
    timerInt -= 1;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timerInt];
    
    if (timerInt == 0) {
        [timer invalidate];
    }
    
}

- (IBAction)tapButton:(id)sender {
}
@end
