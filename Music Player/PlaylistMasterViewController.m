//
//  ViewController.m
//  Music Player
//
//  Created by PLATFORM on 05/07/16.
//  Copyright (c) 2016 madp. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    self.playlistImageView0.image = playlist.playlistIcon;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqual: @"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *) segue.destinationViewController;
        playlistDetailController.playlist = [[Playlist alloc] initWithIndex:0];
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier: @"showPlaylistDetail" sender: sender];
}


@end
