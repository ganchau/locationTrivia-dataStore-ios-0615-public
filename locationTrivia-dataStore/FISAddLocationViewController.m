//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Gan Chau on 6/18/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocationsDataManager.h"
#import "FISLocation.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *latitudeTextLabel;
@property (weak, nonatomic) IBOutlet UITextField *longitudeTextLabel;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender
{
    FISLocationsDataManager *locationDM = [FISLocationsDataManager sharedLocationsDataManager];
    FISLocation *location = [[FISLocation alloc] initWithName:self.nameTextLabel.text
                                                     latitude:@([self.latitudeTextLabel.text integerValue])
                                                    longitude:@([self.longitudeTextLabel.text integerValue])];
    [locationDM.locations addObject:location];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)viewTapped:(id)sender
{
    [self.nameTextLabel resignFirstResponder];
    [self.longitudeTextLabel resignFirstResponder];
    [self.latitudeTextLabel resignFirstResponder];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
