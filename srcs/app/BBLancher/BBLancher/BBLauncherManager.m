#import "BBLauncherManager.h"
#import "BBViewController.h"

@interface BBLauncherManager ()

@property (nonatomic, weak) UIWindow *window;

@end

@implementation BBLauncherManager

+ (BBLauncherManager *)sharedInstance {
    static BBLauncherManager *rootVCManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        rootVCManager = [[self alloc] init];
    });
    return rootVCManager;
}

- (void)launchInWindow:(UIWindow *)window
{
    self.window = window;
    BBViewController *rootVC = [[BBViewController alloc] init];
    UINavigationController *rootNC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [self setRootVC:rootNC];
}

- (void)setRootVC:(__kindof UIViewController *)rootVC {
    _rootVC = rootVC;
    {
        UIWindow *window = self.window ? self.window : [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        [window.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj removeFromSuperview];
        }];
        [window setRootViewController:rootVC];
        [window makeKeyAndVisible];
    }
}
@end
