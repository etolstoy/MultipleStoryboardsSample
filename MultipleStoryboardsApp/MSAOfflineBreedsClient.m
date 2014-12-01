//
//  MSAOfflineBreedsClient.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 11/28/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAOfflineBreedsClient.h"
#import "BreedsProtocol.h"
#import "MSACatBreed.h"

static NSString *const BreedNameKey = @"breedNameKey";
static NSString *const BreedDescriptionKey = @"breedDescriptionKey";

@implementation MSAOfflineBreedsClient

- (void)fetchBreedsWithCompletion:(void (^)(NSArray *result, NSError *error))completion {
    NSArray *breedsArray = @[
                             @{
                                 BreedNameKey : @"Abyssinian",
                                 BreedDescriptionKey : @"The Abyssinian cat as it is known today was developed in Great Britain. The name 'Abyssinian' refers to Ethiopia, in reference to widely-spread stories of British soldiers deployed to North Africa in the nineteenth century returning home with kittens purchased from local traders."
                                 },
                             @{
                                 BreedNameKey : @"American Bobtail",
                                 BreedDescriptionKey : @"The American Bobtail is an uncommon breed of domestic cat which was developed in the late 1960s.[1] It is most notable for its stubby tail about one-third to one-half the length of a normal cat's tail. This is the result of a cat body type genetic mutation affecting the tail development, similar to that of a Manx cat.[1] The breed is not related to the Japanese Bobtail despite the similar name and physical type—the breeding programs are entirely unrelated, and the genetic mutation causing the bobbed tail are known to be different because the mutation causing the American Bobtail's tail is dominant, whereas the Japanese Bobtail tail mutation is recessive.[2]"
                                 },
                             @{
                                 BreedNameKey : @"Bombay",
                                 BreedDescriptionKey : @"Bombay are a type of shorthaired cats developed by breeding sable Burmese and black American Shorthair cats to produce a cat of mostly Burmese type, but with a sleek, tight black coat."
                                 },
                             @{
                                 BreedNameKey : @"Munchkin",
                                 BreedDescriptionKey : @"The Munchkin is a relatively new breed of cat characterized by its very short legs, which are caused by a naturally occurring genetic mutation. Much controversy erupted over the breed when it was recognized by The International Cat Association in 1995 with critics voicing concern over potential health and mobility issues."
                                 },
                             @{
                                 BreedNameKey : @"Russian Blue",
                                 BreedDescriptionKey : @"The Russian Blue is a cat breed that has a silver-blue coat. They are very intelligent and playful, but tend to be shy around strangers. They develop close bonds with their human companions and are sought out as pets due to their personalities and coat."
                                 },
                             ];
    
    NSMutableArray *result = [@[] mutableCopy];
    for (NSDictionary *breedDictionary in breedsArray) {
//        [result addObject:[[MSACatBreed alloc] initWithBreedName:breedDictionary[BreedNameKey]
//                                                breedDescription:breedDictionary[BreedDescriptionKey]]];
    }
    
    completion([result copy], nil);
}

@end
