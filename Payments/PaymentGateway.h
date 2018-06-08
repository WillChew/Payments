//
//  PaymentGateway.h
//  Payments
//
//  Created by Will Chew on 2018-06-08.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>


@class PaymentGateway;
@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger)payment;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate>delegate;

- (void)processPaymentAmount:(NSInteger)paymentAmount;

@end
