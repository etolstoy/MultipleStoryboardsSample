//
//  MSACatBreed.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSACatBreed.h"

@implementation MSACatBreed

- (instancetype)initWithBreedName:(NSString *)breedName
                 breedDescription:(NSString *)breedDescription {
    if (self = [super init]) {
        self.breedName = breedName;
        self.breedDescription = breedDescription;
    }
    
    return self;
}

@end
