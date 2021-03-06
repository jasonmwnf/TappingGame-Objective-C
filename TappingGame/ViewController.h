//
//  ViewController.h
//  TappingGame
//
//  Created by Jason Williams on 2016-01-18.
//  Copyright © 2016 Screaming Goat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSTimer *timer;
    
    int timerInt;
    int tapInt;
    int highScoreInt;
    
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapButtonOutlet;
@property (weak, nonatomic) IBOutlet UILabel *highScoreLabel;

- (IBAction)startGame:(id)sender;
- (IBAction)tapButton:(id)sender;

@end

