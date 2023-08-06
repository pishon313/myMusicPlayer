//
//  PlayViewModel.swift
//  myMusicPlayer
//
//  Created by Sarah Jeong on 2023/08/06.
//

import AVFoundation

class PlayerViewModel {
    
    private var audioPlayer: AVAudioPlayer
    private let musinInfo: MusicInfo
    
    init(audioPlayer: AVAudioPlayer, music: MusicInfo) {
        self.audioPlayer = audioPlayer
        self.musinInfo = music
    }
    
    func startPlayingMusic() {
        if let bundlePath = Bundle.main.path(forResource: musinInfo.songTitle, ofType: musinInfo.filetype),
           let url = URL(string: bundlePath) {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer.play()
            } catch {
                print("Error loading audio file: \(error)")
            }
        }
    }
    
    func stopPlayingMusic() {
        audioPlayer.stop()
    }
}
