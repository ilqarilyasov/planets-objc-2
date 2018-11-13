//
//  LSPlanetCollectionViewController.m
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanetCollectionViewController.h"
#import "LSSettingsViewController.h"
#import "LSPlanetCollectionViewCell.h"
#import "LSPlanetController.h"

@interface LSPlanetCollectionViewController ()

@property (nonatomic, copy, readonly) LSPlanetController *planetController;
@property (nonatomic, copy, readonly) NSArray *planets;

@end

@implementation LSPlanetCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad
{
    [super viewDidLoad];
    _planetController = [[LSPlanetController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.collectionView reloadData];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LSPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    LSPlanet *planet = self.planets[indexPath.row];
    cell.planet = planet;
    [cell updateViews];
    
    return cell;
}

#pragma mark Properties

- (NSArray *) planets
{
    BOOL shouldShowPluto = [[NSUserDefaults standardUserDefaults] boolForKey:@"ShouldShowPluto"];
    
    if (shouldShowPluto) {
        return self.planetController.planetsWithPluto;
    } else {
        return self.planetController.planetsWithoutPluto;
    }
}


@end
