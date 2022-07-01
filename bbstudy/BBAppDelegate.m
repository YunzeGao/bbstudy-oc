#import "BBAppDelegate.h"
#import <BBLancher/BBLauncherManager.h>

@interface BBAppDelegate ()

@end

@implementation BBAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [[BBLauncherManager sharedInstance] launchInWindow:self.window];
     #if DEBUG
         NSBundle *injectionBundle = [NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"];
         [injectionBundle load];
     #endif
    return YES;
}


@end
