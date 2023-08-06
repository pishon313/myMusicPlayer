//
//  PlayerView.swift
//  myMusicPlayer
//
//  Created by Sarah Jeong on 2023/08/06.
//

import Foundation
import UIKit

class PlayerView {
    
    private let viewModel: PlayerViewModel
    
    init(viewModel: PlayerViewModel) {
        self.viewModel = viewModel
    }
    
    func tapPlayButton() {
        viewModel.startPlayingMusic()
    }
    
    func tapStopButton() {
        viewModel.stopPlayingMusic()
    }
    
}
