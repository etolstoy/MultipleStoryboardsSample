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



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
