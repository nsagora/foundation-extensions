import AVFoundation

public extension AVPlayer {

    public var isPlaying: Bool {
        return rate != 0 && error == nil
    }

    public func reset() {
        seek(to: 0)
    }

    public func seek(to second: Double) {
         seek(to: CMTime(seconds: second, preferredTimescale: CMTimeScale(NSEC_PER_SEC)))
    }
}
