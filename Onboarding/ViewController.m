//
//  ViewController.m
//  Onboarding
//
//  Created by shivkanth on 05/08/15.
//  Copyright © 2015 shivkanth. All rights reserved.
//

#import "ViewController.h"
#import "ChildViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageViewController.dataSource = self;
    [[self.pageViewController view] setFrame:[[self view] bounds]];
    
    ChildViewController *initialChildViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = [NSArray arrayWithObject:initialChildViewController];
    
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageViewController];
    [[self view] addSubview:[self.pageViewController view]];
    [self.pageViewController didMoveToParentViewController:self];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(ChildViewController *)viewControllerAtIndex:(NSUInteger)screenNo
{
    ChildViewController *childViewController = [[ChildViewController alloc]initWithNibName:@"ChildViewController" bundle:nil];
    
    childViewController.screenNumber = screenNo;
    
    return childViewController;
}


#pragma mark pageViewControllerDataSource delegate methods

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger screenNo = [(ChildViewController *)viewController screenNumber];
    
    if (screenNo == 0) {
        return nil;
    }
    
    screenNo--;
    
    return [self viewControllerAtIndex:screenNo];
    

}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger screenNo = [(ChildViewController *)viewController screenNumber];
    
    screenNo++;
    
    if (screenNo == 4) {
        return nil;
    }
    
    
    
    return [self viewControllerAtIndex:screenNo];
}


- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return 4;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

@end








