//
//  MusicPlayer.swift
//  myMusicPlayer
//
//  Created by Sarah Jeong on 2023/08/06.
//

import Foundation
import AVFoundation


class MusicPlayer {
    var audioPlayer: AVAudioPlayer?

    func startPlayingMusic() {
        if let bundlePath = Bundle.main.path(forResource: "YourMusicFileName", ofType: "mp3"),
           let url = URL(string: bundlePath) {

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("Error loading audio file: \(error)")
            }
        }
    }
}

