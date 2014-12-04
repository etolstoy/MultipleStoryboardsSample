//
//  MSAPhotoViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSAPhotoViewController.h"
#import <UIImageView+AFNetworking.h>

@interface MSAPhotoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end

@implementation MSAPhotoViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [self.photoImageView setImageWithURL:self.photoImageURL];
}

@end
