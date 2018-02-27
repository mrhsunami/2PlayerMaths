//
//  GameEngine.h
//  2PlayerMaths
//
//  Created by Nathan Hsu on 2018-02-19.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"



@interface GameEngine : NSObject

@property NSString *currentPromptString;
@property Player *currentPlayer;
@property NSString *currentPlayerAnswer;
@property Player *player1;
@property Player *player2;
//@property int currentRound;
@property BOOL gameOn;

-(void)generateQuestion;
-(void)checkIfPlayerAnswersCorrect;
-(void)checkIfGameEnds;
-(void)nextPlayer;

@end
