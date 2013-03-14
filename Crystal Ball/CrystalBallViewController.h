//
//  CrystalBallViewController.h
//  Crystal Ball
//
//  Created by Jeet Mehta on 2013-03-13.
//  Copyright (c) 2013 Jeet Mehta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CrystalBallViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *predictText;
@property (strong, nonatomic) NSMutableArray* arrayOfPredictions;

- (NSArray*) setArray;
- (void) makePrediction;
@end
