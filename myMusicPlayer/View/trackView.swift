//
//  trackView.swift
//  myMusicPlayer
//
//  Created by Sarah Jeong on 2023/08/06.
//

import Foundation
import UIKit

class TrackView: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var songs = [MusicInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}


extension TrackView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let song = songs[indexPath.row]
        
        return cell
        
    }
}
