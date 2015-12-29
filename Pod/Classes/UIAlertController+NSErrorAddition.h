//
// Created by azu on 2014/09/01.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIAlertController (NSErrorAddition)
+ (instancetype)alertControllerWithError:(NSError *)error;
@end