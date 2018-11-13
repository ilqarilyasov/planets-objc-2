//
//  LSPlanet.m
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSPlanet.h"

@implementation LSPlanet

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName
{
    self = [super init];
    if(self) {
        _name = [name copy];
        _image = [UIImage imageNamed:imageName];
    }
    return self;
}

@end
