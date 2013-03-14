//
//  CrystalBallViewController.m
//  Crystal Ball
//
//  Created by Jeet Mehta on 2013-03-13.
//  Copyright (c) 2013 Jeet Mehta. All rights reserved.
//

#import "CrystalBallViewController.h"

@interface CrystalBallViewController ()

@end

@implementation CrystalBallViewController

- (NSArray*) arrayOfPredictions {
    if (!_arrayOfPredictions) {
        _arrayOfPredictions = [[NSArray alloc] initWithObjects: @"It is certain", @"It is decidedly so", @"Without a doubt", @"Yes – definitely", @"You may rely on it", @"As I see it, yes", @"Most likely", @"Outlook good", @"Yes", @"Signs point to yes", @"Reply hazy, try again", @"Ask again later", @" Better not tell you now", @"Cannot predict now", @"Concentrate and ask again", @"Don't count on it", @"My reply is no", @"My sources say no", @"Outlook not so good", @"Very doubtful", nil];
        return _arrayOfPredictions;
    }
    return _arrayOfPredictions;
}


- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictText.text = @"";
    self.predictText.alpha = 0;
}


- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {

    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}


- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) makePrediction {
    self.predictText.text = [self.arrayOfPredictions objectAtIndex:arc4random() % self.arrayOfPredictions.count];
}


- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"Motion cancelled");
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictText.text = @"";
    self.predictText.alpha = 0;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

@end
