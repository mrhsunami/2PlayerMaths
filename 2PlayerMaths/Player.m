//
//  Player.m
//  2PlayerMaths
//
//  Created by Nathan Hsu on 2018-02-19.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "Player.h"

@interface Player()

@property (nonatomic) int livesLeft;
@property (nonatomic) int currentScore;
@property (nonatomic) NSString *name;

@end

@implementation Player

-(instancetype)initWithNumberInName: (NSString *)number {
    self = [super init];
    if (self) {
        _livesLeft = 3;
        _currentScore = 0;
        _name = [NSString stringWithFormat:@"Player %@",number];
    }
    return self;
}

-(NSString *) getName {
    return self.name;
}
-(void)loseARound {
    self.livesLeft -= 1;
}
-(void) winARound {
    self.currentScore += 1;
}
-(int) getCurrentScore {
    return self.currentScore;
}
-(int) getLivesLeft {
    return self.livesLeft;
}

@end
