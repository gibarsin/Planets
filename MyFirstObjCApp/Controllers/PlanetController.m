//
//  PlanetController.m
//  MyFirstObjCApp
//
//  Created by Gonzalo Exequiel Ibars Ingman on 05/04/2019.
//  Copyright © 2019 Gonzalo Exequiel Ibars Ingman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlanetController.h"
#import "Planet.h"

@interface PlanetController ()
@property (strong, nonatomic) Planet *planet;
@end

@implementation PlanetController

-(PlanetController*)initWithPlanet:(Planet *) planet {
    if (self = [super init]) {
        [self setPlanet:planet];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    [self setTitle: [[self planet] name]];
}

@end
