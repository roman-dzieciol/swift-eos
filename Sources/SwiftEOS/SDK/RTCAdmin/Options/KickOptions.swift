import Foundation
import EOSSDK

/** Input parameters for the EOS_RTCAdmin_Kick function. */
public struct SwiftEOS_RTCAdmin_KickOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_KICK_API_LATEST. */
    public let ApiVersion: Int32

    /** Room name to kick the participant from */
    public let RoomName: String?

    /** Product User ID of the participant to kick from the room */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_KickOptions {
        _tagEOS_RTCAdmin_KickOptions(
            ApiVersion: ApiVersion,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_KickOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RoomName = String(cString: sdkObject.RoomName)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_RTCADMIN_KICK_API_LATEST.
    - Parameter RoomName: Room name to kick the participant from
    - Parameter TargetUserId: Product User ID of the participant to kick from the room
    */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_KICK_API_LATEST,
        RoomName: String?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.RoomName = RoomName
        self.TargetUserId = TargetUserId
    }
}
