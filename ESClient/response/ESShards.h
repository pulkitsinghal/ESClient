//
//  ESShards.h
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestKit/RestKit.h"

@interface ESShards : NSObject

@property (nonatomic, strong) NSNumber* total;
@property (nonatomic, strong) NSNumber* successful;
@property (nonatomic, strong) NSNumber* failed;

+ (RKObjectMapping *) getObjectMapping;

@end
