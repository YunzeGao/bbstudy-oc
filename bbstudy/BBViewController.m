#import "BBViewController.h"
@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"bb study";
    [self setDefaultBackgroundColor];
}

// 为UIViewController设置默认的背景色
- (void)setDefaultBackgroundColor {
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view.layer addSublayer:[self defaultBackGroundColorLayer:self.view.frame]];
}

- (CAGradientLayer *)defaultBackGroundColorLayer:(CGRect)frame {
    CAGradientLayer *backgroundLayer = [CAGradientLayer layer];
    backgroundLayer.frame = frame;
    backgroundLayer.colors = @[
        (__bridge id)[UIColor colorWithHexString:@"#F6F5FB"].CGColor,
        (__bridge id)[UIColor colorWithHexString:@"#EEE9FF"].CGColor,
    ];
    backgroundLayer.startPoint = CGPointMake(0.5, 0);
    backgroundLayer.endPoint = CGPointMake(0.5, 1);
    
    return backgroundLayer;
}
@end
