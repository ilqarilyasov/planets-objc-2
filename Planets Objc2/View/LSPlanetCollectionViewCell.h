//
//  LSPlanetCollectionViewCell.h
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSPlanet;

NS_ASSUME_NONNULL_BEGIN

@interface LSPlanetCollectionViewCell : UICollectionViewCell

- (void)updateViews;

@property (nonatomic, strong) LSPlanet *planet;

@end

NS_ASSUME_NONNULL_END
