//
//  GameEngine.m
//  2PlayerMaths
//
//  Created by Nathan Hsu on 2018-02-19.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "GameEngine.h"



@implementation GameEngine

int actualAnswer;

-(instancetype)init {
    self = [super init];
    if (self) {
        _player1 = [[Player alloc]initWithNumberInName:@"1"];
        _player2 = [[Player alloc]initWithNumberInName:@"2"];
        _gameOn = YES;
    }
    return self;
}


-(void)generateQuestion {
    int leftValue = arc4random_uniform(20);
    int rightValue = arc4random_uniform(20);
    actualAnswer = leftValue + rightValue;
    self.currentPromptString = [NSString stringWithFormat:@"%@, what is %i + %i", [self.currentPlayer getName], leftValue, rightValue];
}

-(void)checkIfPlayerAnswersCorrect {
    if ([self.currentPlayerAnswer intValue] == actualAnswer) {
        [self.currentPlayer winARound];
    } else {
        [self.currentPlayer loseARound];
    }
}
-(void)checkIfGameEnds {
    if (self.player1.getLivesLeft < 1 ) {
        self.currentPromptString = @"Player 1, you lost!";
        self.gameOn = NO;
    } else if (self.player2.getLivesLeft < 1 ) {
        self.currentPromptString = @"Player 1, you lost!";
        self.gameOn = NO;
    }
}
-(void)nextPlayer {
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    } else {
        self.currentPlayer = self.player1;
    }
}






@end
