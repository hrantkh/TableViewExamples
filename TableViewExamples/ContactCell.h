//
//  ContactCell.h
//  TableViewExamples
//
//  Created by Seryozha Poghosyan on 10/2/16.
//  Copyright © 2016 ACA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;

@end
