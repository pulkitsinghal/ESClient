//
//  ESHits.m
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESHit.h"

@implementation ESHit

@synthesize index, type, identifier, score, fields;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESHit class]];

    [objectMapping mapKeyPath:@"_index" toAttribute:@"index"];
    [objectMapping mapKeyPath:@"_type"  toAttribute:@"type"];
    [objectMapping mapKeyPath:@"_id"    toAttribute:@"identifier"];
    [objectMapping mapKeyPath:@"_score" toAttribute:@"score"];
    [objectMapping mapKeyPath:@"fields" toAttribute:@"fields"];

    return objectMapping;
}

- (NSString *) description
{
    return [NSString stringWithFormat:
            @"\r      {\r        _index : %@\r        _type: %@\r        _id: %@\r        _score: %@\r        fields: %@\r      }",
            self.index,
            self.type,
            self.identifier,
            self.score,
            self.fields];
}
@end
