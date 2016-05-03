# CircularProgressBar

A very basic Objective-C circular progress view using CAShapeLayer.

## How to install

Simply drag the contents of CircleView in your project and import the header.

## Usage

```
CircleView *circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 50, 300, 300)];

circleView.backgroundCircleColor = [UIColor grayColor]; // set only if above property is YES
circleView.percent = 100; // percent you need to fill up the stroke to
circleView.timeForFullAnimation = 1; // time in seconds for percent = 100
circleView.progressIndicatorColor = [UIColor greenColor]; // indicator color
circleView.lineWidth = 20; // width of the storke
    
[self.view addSubview:circleView];
```

* To add a background ring

```
[circleView addbackgroundCircle];
```

* To animate the circle

```
[circleView animateProgressIndicator];
```

## Reference

[http://stackoverflow.com/questions/7991086/iphone-core-animation-drawing-a-circle/8021051#8021051]

## License

MIT - Free Free Free!!!

