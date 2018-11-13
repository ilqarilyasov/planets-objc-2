//
//  LSPlanetController.m
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanetController.h"
#import "LSPlanet.h"

@implementation LSPlanetController

- (instancetype)init
{
    self= [super init];
    if (self) {
        _planetsWithoutPluto = @[[[LSPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                                 [[LSPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                                 [[LSPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                                 [[LSPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                                 [[LSPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                                 [[LSPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                                 [[LSPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                                 [[LSPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"]];
        
        _planetsWithPluto = @[[[LSPlanet alloc] initWithName:@"Mercury" imageName:@"mercury"],
                              [[LSPlanet alloc] initWithName:@"Venus" imageName:@"venus"],
                              [[LSPlanet alloc] initWithName:@"Earth" imageName:@"earth"],
                              [[LSPlanet alloc] initWithName:@"Mars" imageName:@"mars"],
                              [[LSPlanet alloc] initWithName:@"Jupiter" imageName:@"jupiter"],
                              [[LSPlanet alloc] initWithName:@"Saturn" imageName:@"saturn"],
                              [[LSPlanet alloc] initWithName:@"Uranus" imageName:@"uranus"],
                              [[LSPlanet alloc] initWithName:@"Neptune" imageName:@"neptune"],
                              [[LSPlanet alloc] initWithName:@"Pluto" imageName:@"pluto"]];
    }
    return self;
}

@end
