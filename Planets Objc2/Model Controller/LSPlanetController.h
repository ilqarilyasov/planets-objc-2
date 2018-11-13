//
//  LSPlanetController.h
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSPlanetController : NSObject

@property (nonatomic, copy, readonly) NSArray *planetsWithoutPluto;
@property (nonatomic, copy, readonly) NSArray *planetsWithPluto;

@end

NS_ASSUME_NONNULL_END
