//
//  ViewController.m
//  RKExample
//
//  Created by Ricardo Sánchez-Sáez on 24/04/2015.
//  Copyright (c) 2015 Ricardo Sánchez-Sáez. All rights reserved.
//


#import "MainViewController.h"
#import <ResearchKit/ResearchKit.h>
#import "APHExerciseCheckinTask.h"


@interface MainViewController () <ORKTaskViewControllerDelegate>

@end


@implementation MainViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self launchResearchKit];
}

- (void)launchResearchKit {
    APHExerciseCheckinTask *exerceiseCheckinTask = [[APHExerciseCheckinTask alloc] init];
    ORKTaskViewController *taskViewController = [[ORKTaskViewController alloc] initWithTask:exerceiseCheckinTask taskRunUUID:nil];
    taskViewController.delegate = self;
    [self presentViewController:taskViewController animated:YES completion:nil];
}

- (void)taskViewController:(ORKTaskViewController *)taskViewController
       didFinishWithReason:(ORKTaskViewControllerFinishReason)reason
                     error:(NSError *)error {
    NSLog(@"%@ %ld %@", taskViewController, (long)reason, error);
    NSLog(@"%@", taskViewController.result);
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
