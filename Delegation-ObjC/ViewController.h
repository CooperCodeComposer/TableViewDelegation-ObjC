//
//  ViewController.h
//  Delegation-ObjC
//
//  Created by Alistair Cooper on 4/24/16.
//  Copyright © 2016 Alistair Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *drummers;
    
    UITableView *tableView;
}


@end

