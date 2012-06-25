//
//  ESHits.h
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

@interface ESHit : NSObject

@property (nonatomic, strong) NSString*         index;
@property (nonatomic, strong) NSString*         type;
@property (nonatomic, strong) NSString*         identifier;
@property (nonatomic, strong) NSDecimalNumber*  score;
@property (nonatomic, strong) NSDictionary*     fields;

+ (RKObjectMapping *) getObjectMapping;

@end
