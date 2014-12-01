//
//  MSABreedsTableViewController.m
//  
//
//  Created by Egor Tolstoy on 11/28/14.
//
//

#import "MSABreedsTableViewController.h"
#import "BreedsProtocol.h"
#import "MSACatBreed.h"
#import "MSABreedsRouter.h"
#import "UIViewController+Routing.h"

static NSString *const BreedCellIdentifier = @"BreedCell";

@interface MSABreedsTableViewController ()

@property (strong, nonatomic) NSArray *breedsArray;

@end

@implementation MSABreedsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_breedsProvider fetchBreedsWithCompletion:^(NSArray *result, NSError *error) {
        self.breedsArray = result;
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.breedsArray count];
} 

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:BreedCellIdentifier forIndexPath:indexPath];
    
    MSACatBreed *breed = self.breedsArray[indexPath.row];
    
    cell.textLabel.text = breed.breedName;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [(MSABreedsRouter *)self.router showBreedViewControllerFromSourceController:self
                                                  withCatBreed:self.breedsArray[indexPath.row]];
}


@end
