//
//  ViewController.m
//  madLibs
//
//  Created by Henna on 6/7/15.
//  Copyright (c) 2015 Henna Ahmed. All rights reserved.
//

//There was an Polish woman who lived in a/an CD Player.
//She had so many Appendices she didn`t know what to do.
//She gave them some broth without any Wolf.
//She Cawed them all soundly and put them to bed.

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjective;
@property (weak, nonatomic) IBOutlet UITextField *Noun1;
@property (weak, nonatomic) IBOutlet UITextField *nounPlural;
@property (weak, nonatomic) IBOutlet UITextField *Noun2;
@property (weak, nonatomic) IBOutlet UITextField *verb;
@property (weak, nonatomic) IBOutlet UILabel *story;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onSubmit:(id)sender {
    NSString *adjective = self.adjective.text,
        *noun1 = self.Noun1.text,
        *nounPlural = self.nounPlural.text,
        *noun2 = self.Noun2.text,
        *verb = self.verb.text;
    
    NSString *story = [NSString stringWithFormat:@"There was a(n) %@ woman who lived in a(n) %@. She had so many %@ she didn`t know what to do. She gave them some broth without any %@. She %@ them all soundly and put them to bed.", adjective, noun1, nounPlural, noun2, verb];

    self.story.text = story;
    
    
    
}

@end
