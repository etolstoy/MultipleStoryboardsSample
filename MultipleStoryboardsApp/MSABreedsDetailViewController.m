//
//  MSABreedsDetailViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsDetailViewController.h"
#import "MSACatBreed.h"

@interface MSABreedsDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextView *breedDetailTextView;

@end

@implementation MSABreedsDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.catBreed.breedName;
    self.breedDetailTextView.text = self.catBreed.breedDescription;
}

@end
