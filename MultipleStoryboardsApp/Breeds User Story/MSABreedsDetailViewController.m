//
//  MSABreedsDetailViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABreedsDetailViewController.h"
#import "MSACatBreed.h"
#import "MSABreedsRouterImplementation.h"
#import "UIViewController+Routing.h"
#import "MSABreedsRouter.h"

@interface MSABreedsDetailViewController ()

@property (strong, nonatomic) id<MSABreedsRouter> router;
@property (weak, nonatomic) IBOutlet UITextView *breedDetailTextView;

@end

@implementation MSABreedsDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.catBreed.breedName;
    self.breedDetailTextView.text = self.catBreed.breedDescription;
}

- (IBAction)showPicturesButtonClicked:(id)sender {
    [self.router showPhotosViewControllerFromSourceController:self
                                                 withCatBreed:self.catBreed];
}

- (IBAction)warningButtonClicked:(id)sender {
    [self.router showWarningViewControllerFromSourceController:self];
}

@end
