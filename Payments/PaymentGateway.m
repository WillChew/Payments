//
//  PaymentGateway.m
//  Payments
//
//  Created by Will Chew on 2018-06-08.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway


-(BOOL)canProcessPayment {
    BOOL answer = YES;
    int random = arc4random_uniform(2);
    
    if (random == 0) {
        answer = YES;
        NSLog(@"YES");
    }
    return answer;
}

//- (void)processPaymentAmount:(NSInteger)payment {
//
//    if ([self.delegate canProcessPayment] == YES) {
//        [self.delegate processPaymentAmount:payment];
//    }
//    else {
//        NSLog(@"Can not process");
//    }
//}

- (void)processPaymentAmount:(NSInteger)payment {
    
    if ([_delegate canProcessPayment] == YES) {
        [self.delegate processPaymentAmount:payment];
    }
   
}
@end
