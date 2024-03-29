//
//  PlaylistDetailViewController.m
//  Music Player
//
//  Created by PLATFORM on 05/07/16.
//  Copyright (c) 2016 madp. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if(self.playlist){
        self.playlistCoverImage.image = self.playlist.playlistLargeIcon;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        //NSLog(@"Check : %@" , self.playlist.playlistTitle);
        
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
        self.playlistArtist3.text = self.playlist.playlistArtists[3];
        self.playlistArtist4.text = self.playlist.playlistArtists[4];
        self.playlistArtist5.text = self.playlist.playlistArtists[5];
        self.playlistArtist6.text = self.playlist.playlistArtists[6];
        self.scrollView.contentSize = CGSizeMake(320, 230);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
