//
//  FirstViewController.m
//  TableViewExamples
//
//  Created by Seryozha Poghosyan on 9/29/16.
//  Copyright © 2016 ACA. All rights reserved.
//

#import "FirstViewController.h"
#import "ContactCell.h"
#import "ContactDetailsViewController.h"

@interface FirstViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, copy) NSArray *contacts;
@property (nonatomic) NSInteger selectedContactIndex;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.contacts = @[[Contact contactWithName:@"John" phoneNumber:@"111"],
                      [Contact contactWithName:@"Jane" phoneNumber:@"222"],
                      [Contact contactWithName:@"Jack" phoneNumber:@"333"],
                      [Contact contactWithName:@"Jim" phoneNumber:@"444"],
                      [Contact contactWithName:@"Jody" phoneNumber:@"555"],
                      [Contact contactWithName:@"Jared" phoneNumber:@"666"]];
}


// MARK: UITableViewDataSource and Delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Contact *contact = self.contacts[indexPath.row];
    [cell.nameLabel setText:contact.firstName];
    [cell.phoneNumberLabel setText:contact.phoneNumber];
    return cell;
//    return [[UITableViewCell alloc] init];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    self.selectedContactIndex = indexPath.row;
    [self performSegueWithIdentifier:@"DetailsSegue" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DetailsSegue"]) {
        ContactDetailsViewController *destinationVC = [segue destinationViewController];
        destinationVC.contact = self.contacts[self.selectedContactIndex];
    }
}

@end
