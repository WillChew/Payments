//
//  StripePaymentService.m
//  Payments
//
//  Created by Will Chew on 2018-06-08.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)payment {
    NSLog(@"Paying with Stripe");
}

-(BOOL)canProcessPayment {
    BOOL answer = YES;
    
    if (arc4random_uniform(2) == 1) {
        answer = YES;
        NSLog(@"YES");
    }
    
    return answer;
}



@end
