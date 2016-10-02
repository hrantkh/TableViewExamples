//
//  Contact.h
//  TableViewExamples
//
//  Created by Seryozha Poghosyan on 10/2/16.
//  Copyright © 2016 ACA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *phoneNumber;

+ (instancetype)contactWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber;

@end
