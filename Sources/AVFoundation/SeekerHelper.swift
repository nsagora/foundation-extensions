import Foundation
import AVFoundation

// Documentation is available here: https://developer.apple.com/library/archive/qa/qa1820/_index.html

public class SeekerHelper {

    private var player: AVPlayer
    private var playerItem: AVPlayerItem

    private var isSeekInProgress = false
    private var chaseTime = kCMTimeZero

    public init(player: AVPlayer, playerItem: AVPlayerItem) {
        self.player = player
        self.playerItem = playerItem
    }

    public func seek(to second: Double) {
        let newChaseTime = CMTime(seconds: second, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
        guard CMTimeCompare(newChaseTime, chaseTime) != 0 else { return }

        chaseTime = newChaseTime
        if !isSeekInProgress {
            seekToChaseTimeIfPossible()
        }
    }

    private func seekToChaseTimeIfPossible() {
        guard playerItem.status == .readyToPlay else { return }
        seekToChaseTime()
    }

    private func seekToChaseTime() {
        isSeekInProgress = true
        let seekTimeInProgress = chaseTime
        player.seek(to: seekTimeInProgress, toleranceBefore: kCMTimeZero, toleranceAfter: kCMTimeZero, completionHandler: { [unowned self] _ -> Void in
            if CMTimeCompare(seekTimeInProgress, self.chaseTime) == 0 {
                self.isSeekInProgress = false
            } else {
                self.seekToChaseTimeIfPossible()
            }
        })
    }
}
