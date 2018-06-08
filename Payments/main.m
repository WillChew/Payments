//
//  main.m
//  Payments
//
//  Created by Will Chew on 2018-06-08.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char merchant[255];
        
        while (YES){
        
        NSInteger payment = arc4random_uniform(900)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", payment);
        
        fgets(merchant, 255, stdin);
        
        NSString *result = [NSString stringWithCString:merchant encoding:NSUTF8StringEncoding];
        NSString *resultTrimmed = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger price = resultTrimmed.integerValue;
        
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
        [paymentGateway processPaymentAmount:price];
        
        StripePaymentService *stripe = [[StripePaymentService alloc]init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
        switch (price) {
            case 1:
                paymentGateway.delegate = paypal;
                [paypal processPaymentAmount:price];
                break;
            case 2:
                paymentGateway.delegate = stripe;
                [stripe processPaymentAmount:price];
                break;
            case 3:
                paymentGateway.delegate = amazon;
                [amazon processPaymentAmount:price];
            default:
                break;
        }
        
        
        
        
        
        
        }
    }
    return 0;
}
