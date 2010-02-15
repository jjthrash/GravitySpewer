//
//  GravitySpewerViewController.h
//  GravitySpewer
//
//  Created by James Thrasher on 2/15/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GravitySpewerViewController : UIViewController {
    UIButton *startStopSpewingButton;
    UITextField *ipField;
    UITextField *portField;
}

@property (nonatomic, retain) IBOutlet UIButton *startStopSpewingButton;
@property (nonatomic, retain) IBOutlet UITextField *ipField;
@property (nonatomic, retain) IBOutlet UITextField *portField;

- (IBAction)startStopSpewing;

@end

