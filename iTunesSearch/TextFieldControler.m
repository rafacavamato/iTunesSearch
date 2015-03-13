//
//  TextFieldControler.m
//  iTunesSearch
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/10/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import "TextFieldControler.h"
#import "TableViewController.h"
#import "TableViewCell.h"
#import "iTunesManager.h"
#import "Entidades/Filme.h"

@implementation TextFieldControler


- (void)awakeFromNib {
    // Initialization code
    
     [_procuraButton setTitle:NSLocalizedString(@"Search",nil) forState:UIControlStateNormal];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}
- (IBAction)procuraButton:(id)sender {
    [sender setTitle:NSLocalizedString(@"Search",nil) forState:UIControlStateNormal];
}
//#pragma mark - searchBar
//- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {iTunesManager *itunes = [iTunesManager sharedInstance];
//    midias = [itunes buscarMidias:searchBar.text];
    //Filme *filme = [midias objectAtIndex:indexPath.row];
    //filmes = [[iTunesManager sharedInstance]buscarMidias:searchBar.text];
//    [self.TableView reloadData];
//}
@end
