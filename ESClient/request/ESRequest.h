//
//  ESRequest.h
//  ShoppinPal
//
//  Created by Pulkit Singhal on 4/9/12.
//  Copyright (c) 2012 Fermyon Inc. All rights reserved.
//

#import "ESQuery.h"

@interface ESRequest : NSObject

@property (nonatomic, strong) NSNumber* from;
@property (nonatomic, strong) NSNumber* size;
@property (nonatomic, strong) NSArray*  fieldsToQueryFor;
@property (nonatomic, strong) ESQuery*  query;

+ (RKObjectMapping *) getObjectMapping;

@end
