//
//  TextFieldControler.m
//  iTunesSearch
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/10/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import "TextFieldControler.h"

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
@end
