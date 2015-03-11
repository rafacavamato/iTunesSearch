//
//  TextFieldControler.h
//  iTunesSearch
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/10/15.
//  Copyright (c) 2015 joaquim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextFieldControler : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *procura;
- (IBAction)procuraButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *procuraButton;

@end
