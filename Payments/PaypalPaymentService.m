//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Will Chew on 2018-06-08.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)payment {
    NSLog(@"Paying with Paypal : %ld", payment);
}

-(BOOL)canProcessPayment {
    BOOL answer = YES;
    int random = arc4random_uniform(2);
    
    if (random == 0) {
        answer = YES;
        NSLog(@"YES");
    }
    return answer;
}

@end
