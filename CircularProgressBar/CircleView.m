//
//  CircleView.m
//  CircularProgressBar
//
//  Created by Madanlal on 02/05/16.
//  Copyright © 2016 Madanlal Arora. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

@synthesize percent;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.progressIndicatorColor ? self.progressIndicatorColor : [UIColor greenColor];
        self.backgroundCircleColor ? self.backgroundCircleColor : [UIColor grayColor];
    }
    
    return self;
}

- (void)addbackgroundCircle {
    // Set up the shape of the circle
    int radius = self.frame.size.width * 0.42;
    
    CAShapeLayer *circleGray = [CAShapeLayer layer];
    // Make a circular shape
    circleGray.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(self.frame.size.width * 0.5 - radius, self.frame.size.width  * 0.5 - radius, 2.0 * radius, 2.0 * radius) cornerRadius:radius].CGPath;
    // Center the shape in self.view
    circleGray.position = CGPointMake(0, 0);
    
    // Configure the apperence of the circle
    circleGray.fillColor = [UIColor clearColor].CGColor;
    circleGray.strokeColor = self.backgroundCircleColor.CGColor;
    circleGray.lineWidth = self.lineWidth;
    circleGray.lineCap = kCALineCapRound;
    circleGray.strokeEnd = 1;
    
    // Add to parent layer
    [self.layer addSublayer:circleGray];
}

- (void)animateProgressIndicator {
    // Set up the shape of the circle
    int radius = self.frame.size.width * 0.42;
    
    // set percent
    percent = percent * 0.01;
    
    CAShapeLayer *circle = [CAShapeLayer layer];
    // Make a circular shape
    circle.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(self.frame.size.width * 0.5 - radius, self.frame.size.width  * 0.5 - radius, 2.0 * radius, 2.0 * radius) cornerRadius:radius].CGPath;
    // Center the shape in self.view
    circle.position = CGPointMake(0, 0);
    
    // Configure the apperence of the circle
    circle.fillColor = [UIColor clearColor].CGColor;
    circle.strokeColor = self.progressIndicatorColor.CGColor;
    circle.lineWidth = self.lineWidth;
    circle.lineCap = kCALineCapRound;
    circle.strokeEnd = percent;
    
    // Add to parent layer
    [self.layer addSublayer:circle];
    
    // Configure animation
    CABasicAnimation *drawAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    drawAnimation.duration            = percent * self.timeForFullAnimation; // animation duration
    drawAnimation.repeatCount         = 1.0;  // Animate only once..
    
    // Animate from no part of the stroke being drawn to the entire stroke being drawn
    drawAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    drawAnimation.toValue   = [NSNumber numberWithFloat:percent];
    
    // Experiment with timing to get the appearence to look the way you want
    drawAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    // Add the animation to the circle
    [circle addAnimation:drawAnimation forKey:@"drawCircleAnimation"];
}


@end
