//
//  ChildViewController.m
//  Onboarding
//
//  Created by shivkanth on 05/08/15.
//  Copyright © 2015 shivkanth. All rights reserved.
//

#import "ChildViewController.h"

@interface ChildViewController ()

@end

@implementation ChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if(self.screenNumber == 0)
        self.screenText.text = @"[handle]";
    else if(self.screenNumber == 1)
        self.screenText.text = @"[amir]";
    else if(self.screenNumber == 2)
        self.screenText.text = @"[jordan]";
    else if(self.screenNumber == 3)
        self.screenText.text = @"[shiv]";
    else
        self.screenText.text = @"[Handle]";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
