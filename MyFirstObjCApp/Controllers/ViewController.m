//
//  ViewController.m
//  MyFirstObjCApp
//
//  Created by Gonzalo Exequiel Ibars Ingman on 04/04/2019.
//  Copyright © 2019 Gonzalo Exequiel Ibars Ingman. All rights reserved.
//

#import "ViewController.h"
#import "PlanetService.h"
#import "PlanetController.h"

@interface ViewController ()
@property (strong, nonatomic) PlanetService *planetService;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor whiteColor]];

    [self setPlanetService:[[PlanetService alloc] init]];
    
    [self setTitle: @"Planets"];
    
    [[self tableView] registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Planet"];
    [[self tableView] setTableFooterView: [[UIView alloc] initWithFrame:CGRectZero]];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [[self tableView] deselectRowAtIndexPath: [[self tableView] indexPathForSelectedRow] animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self planetService] numberOfPlanets];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Planet *planet = [[self planetService] planetForOrdinal: [indexPath row]];
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Planet" forIndexPath:indexPath];
    [[cell textLabel] setText: [planet name]];
    [cell setAccessoryType: UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Planet *planet = [[self planetService] planetForOrdinal: [indexPath row]];
    PlanetController *planetController = [[PlanetController alloc] initWithPlanet: planet];
    [[self navigationController] pushViewController:planetController animated:YES];
}

@end
