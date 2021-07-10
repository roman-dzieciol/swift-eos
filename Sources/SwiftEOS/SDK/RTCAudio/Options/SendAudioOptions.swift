import Foundation
import EOSSDK

/** This struct is used to call EOS_RTCAudio_SendAudio. */
public struct SwiftEOS_RTCAudio_SendAudioOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_SENDAUDIO_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation. */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on. */
    public let RoomName: String?

    /**
    Audio buffer, which must have a duration of 10 ms.

    - Note: The SDK makes a copy of buffer. There is no need to keep the buffer around after calling EOS_RTCAudio_SendAudio
    */
    public let Buffer: SwiftEOS_RTCAudio_AudioBuffer?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_SendAudioOptions {
        try _tagEOS_RTCAudio_SendAudioOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            Buffer: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: Buffer?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_SendAudioOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.Buffer = try SwiftEOS_RTCAudio_AudioBuffer.init(sdkObject: sdkObject.Buffer.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_RTCAUDIO_SENDAUDIO_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    - Parameter Buffer: Audio buffer, which must have a duration of 10 ms.
    - Note: The SDK makes a copy of buffer. There is no need to keep the buffer around after calling EOS_RTCAudio_SendAudio
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_SENDAUDIO_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        Buffer: SwiftEOS_RTCAudio_AudioBuffer?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.Buffer = Buffer
    }
}
