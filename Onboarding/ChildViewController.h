//
//  ChildViewController.h
//  Onboarding
//
//  Created by shivkanth on 05/08/15.
//  Copyright © 2015 shivkanth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildViewController : UIViewController

@property(assign,nonatomic) NSUInteger screenNumber;
@property (weak, nonatomic) IBOutlet UILabel *screenText;

@end
