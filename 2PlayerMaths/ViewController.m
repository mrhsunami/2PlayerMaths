//
//  ViewController.m
//  2PlayerMaths
//
//  Created by Nathan Hsu on 2018-02-19.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerlabel;
@property (strong, nonatomic) GameEngine *currentGame;

- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;
- (IBAction)button6:(id)sender;
- (IBAction)button7:(id)sender;
- (IBAction)button8:(id)sender;
- (IBAction)button9:(id)sender;
- (IBAction)button0:(id)sender;
- (IBAction)submitButton:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    self.currentGame = [[GameEngine alloc] init];
    self.currentGame.currentPlayer = self.currentGame.player1;
    
    [self newRound];
    
    
    
}

-(void)newRound {
    if (self.currentGame.gameOn) {
        [self.currentGame generateQuestion];
        [self updateInterface];
    }
}

-(void)updateInterface {
    self.questionLabel.text = self.currentGame.currentPromptString;
    self.player1Score.text = [NSString stringWithFormat:@"Player 1 Score: %i", self.currentGame.player1.getCurrentScore];
    self.player2Score.text = [NSString stringWithFormat:@"Player 2 Score: %i", self.currentGame.player2.getCurrentScore];
}

-(void)checkAnswerAndProceed {
    self.currentGame.currentPlayerAnswer = self.answerlabel.text;
    self.answerlabel.text = @"";
    [self.currentGame checkIfPlayerAnswersCorrect];
    [self.currentGame checkIfGameEnds];
    [self updateInterface];
    [self.currentGame nextPlayer];
    [self newRound];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButton:(id)sender {
    [self checkAnswerAndProceed];
}

- (IBAction)button1:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"1"];
}

- (IBAction)button2:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"2"];
}

- (IBAction)button3:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"3"];
}

- (IBAction)button4:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"4"];
}

- (IBAction)button5:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"5"];
}

- (IBAction)button6:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"6"];
}
- (IBAction)button7:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"7"];
}

- (IBAction)button8:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"8"];
}

- (IBAction)button9:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"9"];
}

- (IBAction)button0:(id)sender {
    self.answerlabel.text = [self.answerlabel.text stringByAppendingString:@"0"];
}


@end
