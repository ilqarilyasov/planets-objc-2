//
//  LSPlanetCollectionViewCell.m
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanetCollectionViewCell.h"
#import "LSPlanet.h"

@interface LSPlanetCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *planetImageView;
@property (weak, nonatomic) IBOutlet UILabel *planetNameLabel;


@end

@implementation LSPlanetCollectionViewCell

- (void)updateViews
{
    if (self.planet) {
        self.planetImageView.image = self.planet.image;
        self.planetNameLabel.text = self.planet.name;
    }
}

@end
