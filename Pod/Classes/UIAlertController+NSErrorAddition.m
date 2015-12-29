//
// Created by azu on 2014/09/01.
//


#import "UIAlertView+NSErrorAddition.h"


@implementation UIAlertController (NSErrorAddition)
+ (instancetype)alertControllerWithError:(NSError *)error {
    NSString *title = [error localizedDescription];
    NSString *message = [self messageForError:error];
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    NSArray *optionTitles = [error localizedRecoveryOptions];
    for (NSString *title in optionTitles) {
        [controller addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:nil]];
    }
    if ([optionTitles count] == 0) {
        [controller addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    }
    return controller;
}

+ (NSString *)messageForError:(NSError *)error {
    NSMutableArray *messageArray = [NSMutableArray array];
    if ([error localizedFailureReason] != nil) {
        [messageArray addObject:[error localizedFailureReason]];
    }
    if ([error localizedRecoverySuggestion] != nil) {
        [messageArray addObject:[error localizedRecoverySuggestion]];
    }
    return [messageArray componentsJoinedByString:@"\n"];
}
@end
