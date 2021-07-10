import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTCAudio_UpdateSending */
public struct SwiftEOS_RTCAudio_UpdateSendingOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_UPDATESENDING_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on. */
    public let RoomName: String?

    /** Muted or unmuted audio track status */
    public let AudioStatus: EOS_ERTCAudioStatus

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_UpdateSendingOptions {
        _tagEOS_RTCAudio_UpdateSendingOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            AudioStatus: AudioStatus
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateSendingOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.AudioStatus = sdkObject.AudioStatus
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_RTCAUDIO_UPDATESENDING_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The room this settings should be applied on.
    - Parameter AudioStatus: Muted or unmuted audio track status
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_UPDATESENDING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        AudioStatus: EOS_ERTCAudioStatus
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.AudioStatus = AudioStatus
    }
}
