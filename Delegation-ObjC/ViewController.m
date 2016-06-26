//
//  ViewController.m
//  Delegation-ObjC
//
//  Created by Alistair Cooper on 4/24/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    drummers = @[@"Mike Mangini", @"Terry Bozzio", @"Vinnie Colaiuta", @"Manu Katche", @"Marco Minnimann", @"Danny Carey", @"John Bohnam"];
    
    tableView = [ [UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain ];
    
    // this dynamically discovers the size of the view
    CGRect viewFrame = CGRectInset(self.view.bounds, 20, 80);
    
    tableView.frame = viewFrame;
    
    [self.view addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
        
    tableView.separatorColor = [UIColor redColor];
    tableView.sectionIndexTrackingBackgroundColor = [UIColor blueColor];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return [drummers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    UITableViewCell *cell = [ [UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    // passed in by indexPath (tell which is clicked)
    NSString *labelText = [drummers objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = labelText;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *drummer = [drummers objectAtIndex:indexPath.row];
    
    NSLog(@"Selected %@", drummer);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}




@end

// NOTE the cell is just a UIView it can have any other UIView placed ontop of it
