//
//  RichLauncherManager.h
//  Rich
//
//  Created by G&H on 2022/3/17.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BBLauncherManager : NSObject

/// 当前根控制器
@property (nonatomic, strong, readonly) __kindof UIViewController *rootVC;

+ (BBLauncherManager *)sharedInstance;

/**
 *  启动，初始化
 */
- (void)launchInWindow:(UIWindow *)window;

- (void)setRootVC:(__kindof UIViewController *)rootVC;


- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end
