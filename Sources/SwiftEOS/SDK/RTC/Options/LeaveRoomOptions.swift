import Foundation
import EOSSDK

/** This struct is used to call EOS_RTC_LeaveRoom. */
public struct SwiftEOS_RTC_LeaveRoomOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTC_LEAVEROOM_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the user requesting to leave the room  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room to leave.  */
    public let RoomName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTC_LeaveRoomOptions {
        _tagEOS_RTC_LeaveRoomOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_LeaveRoomOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_RTC_LEAVEROOM_API_LATEST. 
     * - Parameter LocalUserId:  Product User ID of the user requesting to leave the room 
     * - Parameter RoomName:  The room to leave. 
     */
    public init(
        ApiVersion: Int32 = EOS_RTC_LEAVEROOM_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}
