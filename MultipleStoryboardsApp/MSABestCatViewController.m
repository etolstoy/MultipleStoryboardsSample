//
//  MSABestCatViewController.m
//  MultipleStoryboardsApp
//
//  Created by Egor Tolstoy on 12/1/14.
//  Copyright (c) 2014 etolstoy. All rights reserved.
//

#import "MSABestCatViewController.h"
#import "UIViewController+Routing.h"
#import "MSABestCatRouter.h"

@interface MSABestCatViewController ()

@property (weak, nonatomic) IBOutlet UILabel *catNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *catInfoTextView;

@end

@implementation MSABestCatViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.catNameLabel.text = self.bestCatName;
    self.catInfoTextView.text = self.bestCatInformation;
}

- (IBAction)photoButtonClicked:(id)sender {
    [(MSABestCatRouter *)self.router showPhotoViewControllerFromSourceController:self
                                                                         withURL:self.bestCatImageURL];
}

@end
