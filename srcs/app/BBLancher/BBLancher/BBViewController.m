#import "BBViewController.h"
#import <Masonry/Masonry.h>
@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点一下" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.offset(0);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
}

// 为UIViewController设置默认的背景色
// - (void)setDefaultBackgroundColor {
//     [self.view setBackgroundColor:[UIColor whiteColor]];
//     [self.view.layer addSublayer:[self defaultBackGroundColorLayer:self.view.frame]];
// }

// - (CAGradientLayer *)defaultBackGroundColorLayer:(CGRect)frame {
//     CAGradientLayer *backgroundLayer = [CAGradientLayer layer];
//     backgroundLayer.frame = frame;
//     backgroundLayer.colors = @[
//         (__bridge id)[UIColor blueColor].CGColor,
//         (__bridge id)[UIColor purpleColor].CGColor,
//     ];
//     backgroundLayer.startPoint = CGPointMake(0.5, 0);
//     backgroundLayer.endPoint = CGPointMake(0.5, 1);
    
//     return backgroundLayer;
// }
@end
