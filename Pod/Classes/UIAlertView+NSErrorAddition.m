//
// Created by azu on 2014/09/01.
//


#import "UIAlertView+NSErrorAddition.h"


@implementation UIAlertView (NSErrorAddition)
- (instancetype)initWithError:(NSError *) error {
    self = [super init];
    if (self) {
        self.title = [error localizedDescription];
        NSMutableArray *messageArray = [NSMutableArray array];
        if ([error localizedFailureReason] != nil) {
            [messageArray addObject:[error localizedFailureReason]];
        }
        if ([error localizedRecoverySuggestion] != nil) {
            [messageArray addObject:[error localizedRecoverySuggestion]];
        }
        self.message = [messageArray componentsJoinedByString:@"\n"];
        NSArray *optionTitles = [error localizedRecoveryOptions];
        for (NSString *title in optionTitles) {
            [self addButtonWithTitle:title];
        }
        // UIAlertView must has a Button at least.
        if ([optionTitles count] == 0) {
            [self addButtonWithTitle:@"OK"];
        }
    }
    return self;
}
@end