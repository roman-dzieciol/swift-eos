import Foundation
import EOSSDK

/** This struct is used to represent an audio buffer received in callbacks from EOS_RTCAudio_AddNotifyAudioBeforeSend and EOS_RTCAudio_AddNotifyAudioBeforeRender. */
public struct SwiftEOS_RTCAudio_AudioBuffer: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Pointer to the data with the interleaved audio frames in signed 16 bits format.  */
    public let Frames: [Int16]?

    /**
     * Number of frames available in the Frames buffer.
     * 
     * @note This is the number of frames in a channel, not the total number of frames in the buffer.
     */
    public let FramesCount: Int

    /** Sample rate for the samples in the Frames buffer.  */
    public let SampleRate: Int

    /** Number of channels for the samples in the Frames buffer.  */
    public let Channels: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AudioBuffer?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Frames = try trivialArrayFromTrivialPointer(
            start: sdkObject.Frames,
            count: sdkObject.FramesCount
        )
        self.FramesCount = try safeNumericCast(exactly: sdkObject.FramesCount)
        self.SampleRate = try safeNumericCast(exactly: sdkObject.SampleRate)
        self.Channels = try safeNumericCast(exactly: sdkObject.Channels)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AudioBuffer {
        try _tagEOS_RTCAudio_AudioBuffer(
            ApiVersion: ApiVersion,
            Frames: pointerManager.managedMutablePointerToBuffer(copyingArray: Frames),
            FramesCount: try safeNumericCast(exactly: FramesCount),
            SampleRate: try safeNumericCast(exactly: SampleRate),
            Channels: try safeNumericCast(exactly: Channels)
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST. 
     * - Parameter Frames:  Pointer to the data with the interleaved audio frames in signed 16 bits format. 
     * - Parameter FramesCount:  Number of frames available in the Frames buffer.
     * 
     * @note This is the number of frames in a channel, not the total number of frames in the buffer.
     * - Parameter SampleRate:  Sample rate for the samples in the Frames buffer. 
     * - Parameter Channels:  Number of channels for the samples in the Frames buffer. 
     */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_AUDIOBUFFER_API_LATEST,
        Frames: [Int16]?,
        FramesCount: Int,
        SampleRate: Int,
        Channels: Int
    ) {
        self.ApiVersion = ApiVersion
        self.Frames = Frames
        self.FramesCount = FramesCount
        self.SampleRate = SampleRate
        self.Channels = Channels
    }
}
