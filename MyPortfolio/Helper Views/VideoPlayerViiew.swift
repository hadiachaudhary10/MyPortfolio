//
//  VideoPlayerViiew.swift
//  MyPortfolio
//
//  Created by Dev on 23/05/2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    let videoName: String
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        guard let path = Bundle.main.path(forResource: videoName, ofType: "mp4") else {
            return AVPlayerViewController()
        }
        let playerItem = AVPlayerItem(url: URL(fileURLWithPath: path))
        let player = AVPlayer(playerItem: playerItem)
        let playerViewController = AVPlayerViewController()
        playerViewController.view.backgroundColor = .white
        playerViewController.player = player
        playerViewController.showsPlaybackControls = true
        player.play()
        return playerViewController
    }
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {}
}
