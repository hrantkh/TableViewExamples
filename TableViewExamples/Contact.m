//
//  Contact.m
//  TableViewExamples
//
//  Created by Seryozha Poghosyan on 10/2/16.
//  Copyright © 2016 ACA. All rights reserved.
//

#import "Contact.h"

@implementation Contact

+ (instancetype)contactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber {
    Contact *c = [[Contact alloc] init];
    c.firstName = name;
    c.phoneNumber = phoneNumber;
    return c;
}

@end
