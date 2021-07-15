import Foundation
import EOSSDK


/** This struct is used to call `EOS_RTCAudio_AddNotifyAudioOutputState`. */
public struct SwiftEOS_RTCAudio_AddNotifyAudioOutputStateOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTCAUDIO_ADDNOTIFYAUDIOOUTPUTSTATE_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation. */
    public let LocalUserId: EOS_ProductUserId?

    /** The  room this event is registered on. */
    public let RoomName: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions {
        _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_AddNotifyAudioOutputStateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTCAUDIO_ADDNOTIFYAUDIOOUTPUTSTATE_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the user trying to request this operation.
    - Parameter RoomName: The  room this event is registered on.
    */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_ADDNOTIFYAUDIOOUTPUTSTATE_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}
