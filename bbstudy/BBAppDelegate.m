
#import "BBAppDelegate.h"
#import "BBViewController.h"

@interface BBAppDelegate ()

@end

@implementation BBAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    BBViewController *rootVC = [[BBViewController alloc] init];
    UINavigationController *rootNC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [self.window setRootViewController:rootNC];
    [self.window makeKeyAndVisible];
    // #if DEBUG
    //     NSBundle *injectionBundle = [NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"];
    //     [injectionBundle load];
    // #endif
    return YES;
}


@end
