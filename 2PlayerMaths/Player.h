//
//  Player.h
//  2PlayerMaths
//
//  Created by Nathan Hsu on 2018-02-19.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

-(int) getCurrentScore;
-(int) getLivesLeft;
-(void) loseARound;
-(void) winARound;
-(NSString *) getName;
-(instancetype)initWithNumberInName: (NSString *)number;


@end
