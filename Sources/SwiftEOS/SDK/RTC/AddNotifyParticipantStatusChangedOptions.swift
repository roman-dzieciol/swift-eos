import Foundation
import EOSSDK

/** This struct is used to call EOS_RTC_AddNotifyParticipantStatusChanged. */
public struct SwiftEOS_RTC_AddNotifyParticipantStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTC_ADDNOTIFYPARTICIPANTSTATUSCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this event is registered on.  */
    public let RoomName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTC_AddNotifyParticipantStatusChangedOptions {
        _tagEOS_RTC_AddNotifyParticipantStatusChangedOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_AddNotifyParticipantStatusChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTC_ADDNOTIFYPARTICIPANTSTATUSCHANGED_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}