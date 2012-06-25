//
//  ESShards.m
//  Example
//
//  Created by Pulkit Singhal on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ESShards.h"

@implementation ESShards

@synthesize total, successful, failed;

+ (RKObjectMapping *) getObjectMapping
{
    RKObjectMapping* objectMapping = [RKObjectMapping mappingForClass:[ESShards class]];

    [objectMapping mapKeyPath:@"total"      toAttribute:@"total"];
    [objectMapping mapKeyPath:@"successful" toAttribute:@"successful"];
    [objectMapping mapKeyPath:@"failed"     toAttribute:@"failed"];

    return objectMapping;
}

- (NSString *) description
{
    return [NSString stringWithFormat:
            @"\r  {\r    total : %@\r    successful: %@\r    failed: %@\r  }",
            self.total,
            self.successful,
            self.failed];
}

@end
