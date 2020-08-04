//
//  MenuTableViewController.m
//  SBiiXpress
//
//  Created by Kévin Failleau on 26/01/2017.
//  Copyright © 2017 SBiiXpress. All rights reserved.
//

#import "MenuTableViewController.h"

@interface MenuTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *TableView;
@property (strong, nonatomic) IBOutlet
UITableViewCell *depannage;

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger path = indexPath.row;
    NSInteger section = indexPath.section;
    if (path == 0 && section == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/depanxpress-maintenance-informatique-reseau/"]];

    }
    else if (path == 1 && section == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/imprimxpress-impression-numerique-et-3d/"]];
        
    }
    else if (path == 2 && section == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/ventexpress-vente-de-produits-informatiques-multimedias-et-high-tech/"]];
        
    }
    else if (path == 3 && section == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/webxpress-conception-de-sites-internets-e-commerce-et-communautaire/"]];
        
    }
    else if (path == 4 && section == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/inkxpress-cartouche-jet-dencre-et-toner-laser/"]];
        
    }
    else if (path == 5 && section == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/codeurxpress/"]];
        
    }
    else if (path == 0 && section == 1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sbiixpress.fr/"]];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
