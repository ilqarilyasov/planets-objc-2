//
//  LSPlanet.h
//  Planets Objc2
//
//  Created by Ilgar Ilyasov on 11/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSPlanet : NSObject

- (instancetype)initWithName:(NSString *)name imageName:(NSString *)imageName;

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) UIImage *image;

@end

NS_ASSUME_NONNULL_END
