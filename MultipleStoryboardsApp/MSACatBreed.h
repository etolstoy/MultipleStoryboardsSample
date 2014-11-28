//
//  MSACatBreed.h
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSACatBreed : NSObject

- (instancetype)initWithBreedName:(NSString *)breedName
                 breedDescription:(NSString *)breedDescription;

@property (strong, nonatomic) NSString *breedName;
@property (strong, nonatomic) NSString *breedDescription;

@end