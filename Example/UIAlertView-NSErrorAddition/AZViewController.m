//
//  AZViewController.m
//  UIAlertView-NSErrorAddition
//
//  Created by azu on 09/01/2014.
//  Copyright (c) 2014 azu. All rights reserved.
//

#import "AZViewController.h"
#import "UIAlertView+NSErrorAddition.h"

@interface AZViewController ()

@end

@implementation AZViewController

- (void)viewDidAppear:(BOOL) animated {
    [super viewDidAppear:animated];
    [self showError];
}

- (void)showError {
    NSDictionary *userInfo = @{
        NSLocalizedDescriptionKey : @"Network Error",
        NSLocalizedFailureReasonErrorKey : @"Doesn't connect to network",
        NSLocalizedRecoverySuggestionErrorKey : @"Reload page after check the network.",
        NSLocalizedRecoveryOptionsErrorKey : @[@"OK"]
    };

    NSError *error = [NSError errorWithDomain:[[NSBundle bundleForClass:[self class]] bundleIdentifier] code:0 userInfo:userInfo];
    UIAlertView *alertView = [[UIAlertView alloc] initWithError:error];
    [alertView show];
}
@end
