//
//  CircleView.h
//  CircularProgressBar
//
//  Created by Madanlal on 02/05/16.
//  Copyright © 2016 Madanlal Arora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView

@property (strong, nonatomic) UIColor *backgroundCircleColor;
@property (nonatomic) float percent;
@property (nonatomic) int timeForFullAnimation;
@property (strong, nonatomic) UIColor *progressIndicatorColor;
@property (nonatomic) int lineWidth;

- (void)animateProgressIndicator;
- (void)addbackgroundCircle;

@end
