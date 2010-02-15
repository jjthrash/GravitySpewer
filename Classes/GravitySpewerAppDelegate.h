//
//  GravitySpewerAppDelegate.h
//  GravitySpewer
//
//  Created by James Thrasher on 2/15/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GravitySpewerViewController;

@interface GravitySpewerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GravitySpewerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GravitySpewerViewController *viewController;

@end

