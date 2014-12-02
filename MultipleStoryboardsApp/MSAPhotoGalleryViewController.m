//
//  MSAPhotoGalleryViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAPhotoGalleryViewController.h"
#import "UIViewController+Routing.h"
#import "MSAPhotosRouterImplementation.h"
#import "MSACatBreed.h"
#import "MSAPhotoGalleryCollectionViewCell.h"
#import <UIImageView+AFNetworking.h>
#import "MSAPhotosRouter.h"

static NSString *const MSAPhotoGalleryCollectioViewCellIdentifier = @"PhotoCell";

@interface MSAPhotoGalleryViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) id<MSAPhotosRouter> router;

@end

@implementation MSAPhotoGalleryViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark UICollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.catBreed.breedPictures count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MSAPhotoGalleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:MSAPhotoGalleryCollectioViewCellIdentifier forIndexPath:indexPath];
    NSString *imageURLString = self.catBreed.breedPictures[indexPath.item];
    [cell.photoImageView setImageWithURL:[NSURL URLWithString:imageURLString]];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self.router showPhotoViewControllerFromSourceController:self
                                                     withURL:[NSURL URLWithString:self.catBreed.breedPictures[indexPath.item]]];
}

@end
