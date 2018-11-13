//
//  LSSettingsViewController.m
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSSettingsViewController.h"

@interface LSSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *shouldShowPlutoSwitch;

@end

@implementation LSSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    [self.shouldShowPlutoSwitch setOn:[[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"]];
}

- (IBAction)doneTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)changeShouldShowPluto:(id)sender
{
    BOOL shouldShowPluto = self.shouldShowPlutoSwitch.isOn;
    [[NSUserDefaults standardUserDefaults] setBool:shouldShowPluto forKey:@"ShouldShowPluto"];
}


@end
