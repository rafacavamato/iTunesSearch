//
//  ViewController.m
//  iTunesSearch
//
//  Created by joaquim on 09/03/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "iTunesManager.h"
#import "Entidades/Filme.h"
#import "eBook.h"
#import "Podcast.h"
#import "Musica.h"

@interface TableViewController () {
    NSArray *filmes;
    NSArray *eBooks;
    NSArray *podcasts;
    NSArray *musicas;
}

@end

@implementation TableViewController

- (void)awakeFromNib {
    // Initialization code
    
//    [_button setTitle:NSLocalizedString(@"Search",nil) forState:UIControlStateNormal];
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *nib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tableview registerNib:nib forCellReuseIdentifier:@"celulaPadrao"];
    
    iTunesManager *itunes = [iTunesManager sharedInstance];
    
    
#warning Necessario para que a table view tenha um espaco em relacao ao topo, pois caso contrario o texto ficara atras da barra superior
 
//    self.tableview.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.tableview.bounds.size.width, 15.f)];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Metodos do UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger aux = 0;
    switch (section) {
        
        
        case 0:
            aux = filmes.count;
            
            break;
            
        case 1:
           aux = musicas.count;
            break;
            
        case 2:
            aux = eBooks.count;
            break;
            
        case 3:
            aux = podcasts.count;
            break;
            
        default:
            break;
    }
    
    return aux;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString* titulo;
    switch (section) {
        case 0:
            titulo = @"Filmes";
            break;
    
        case 1:
            titulo = @"Musicas";
            break;
        case 2:
            titulo = @"eBooks";
            break;
        case 3:
            titulo = @"Podcasts";
            break;
        default:
            break;
    }
    return titulo;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath, {
   
    TableViewCell *celula = [self.tableview dequeueReusableCellWithIdentifier:@"celulaPadrao"];
    Filme *filme;
    eBook *eBook;
    Podcast *podcast;
    Musica *musica;
    
    
    switch (indexPath.section) {
            
        case 0:
            
    filme = [filmes objectAtIndex:indexPath.row];
    [celula.nome setText:filme.nome];
    [celula.tipo setText:filme.tipo];
    [celula.genero setText:filme.genero];
            
            break;
        
        case 1:
            
            musica = [musicas objectAtIndex:indexPath.row];
            [celula.nome setText:musica.nome];
            [celula.tipo setText:musica.tipo];
            [celula.genero setText:musica.genero];
            
            break;
            
            
            
        case 2:
            
            eBook = [eBooks objectAtIndex:indexPath.row];
            [celula.nome setText:eBook.nome];
            [celula.tipo setText:eBook.tipo];
            [celula.genero setText:eBook.genero];
            
            break;
            
            
            
        case 3:
            
            podcast = [podcasts objectAtIndex:indexPath.row];
            [celula.nome setText:podcast.nome];
            [celula.tipo setText:podcast.tipo];
            [celula.genero setText:podcast.genero];
            
            break;
            
            
        default:
            break;
    }
    return celula;
}
#pragma mark - searchBar
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    iTunesManager *itunes = [iTunesManager sharedInstance];
    filmes = [itunes buscarFilme:searchBar.text];
    musicas = [itunes buscarMusica:searchBar.text];
    eBooks = [itunes buscarEBook:searchBar.text];
    podcasts   = [itunes buscarPodcast:searchBar.text];
    [self.tableview reloadData];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}


@end
