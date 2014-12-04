//
//  MSAJsonGeneratorBreedsClient.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 30.11.14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAJsonGeneratorBreedsClient.h"
#import "MSACatBreed.h"
#import <AFNetworking.h>
#import "MSABreedsClient.h"

static NSString *const BreedNameKey = @"breedName";
static NSString *const BreedDescriptionKey = @"breedDescription";
static NSString *const BreedPicturesKey = @"pictures";
static NSString *const JsonUrlKey = @"http://www.json-generator.com/api/json/get/bVyGYtfSXm";

@interface MSAJsonGeneratorBreedsClient () <MSABreedsClient>

@end

@implementation MSAJsonGeneratorBreedsClient

- (void)fetchBreedsWithCompletion:(void (^)(NSArray *result, NSError *error))completion {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:JsonUrlKey parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSMutableArray *result = [@[] mutableCopy];
        for (NSDictionary *breedDictionary in responseObject) {
            [result addObject:[[MSACatBreed alloc] initWithBreedName:breedDictionary[BreedNameKey]
                                                    breedDescription:breedDictionary[BreedDescriptionKey]
                                                       breedPictures:breedDictionary[BreedPicturesKey]]];
        }
        completion(result.copy, nil);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        completion(nil, error);
    }];
}

@end