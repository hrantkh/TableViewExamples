//
//  ContactDetailsViewController.m
//  TableViewExamples
//
//  Created by Seryozha Poghosyan on 10/2/16.
//  Copyright © 2016 ACA. All rights reserved.
//

#import "ContactDetailsViewController.h"

@interface ContactDetailsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;

@end

@implementation ContactDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.firstNameLabel.text = self.contact.firstName;
    self.lastNameLabel.text = self.contact.lastName;
    self.phoneNumberLabel.text = self.contact.phoneNumber;
}

@end
