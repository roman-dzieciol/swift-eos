import Foundation
import EOSSDK

/** Input parameters for the EOS_RTCAdmin_SetParticipantHardMute function. */
public struct SwiftEOS_RTCAdmin_SetParticipantHardMuteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_SETPARTICIPANTHARDMUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Room to kick the participant from  */
    public let RoomName: String?

    /** Product User ID of the participant to hard mute for every participant in the room.  */
    public let TargetUserId: EOS_ProductUserId?

    /** Hard mute status (Mute on or off)  */
    public let bMute: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_SetParticipantHardMuteOptions {
        _tagEOS_RTCAdmin_SetParticipantHardMuteOptions(
            ApiVersion: ApiVersion,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            TargetUserId: TargetUserId,
            bMute: eosBoolFromSwiftBool(bMute)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_SetParticipantHardMuteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RoomName = String(cString: sdkObject.RoomName)
        self.TargetUserId = sdkObject.TargetUserId
        self.bMute = try swiftBoolFromEosBool(sdkObject.bMute)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_SETPARTICIPANTHARDMUTE_API_LATEST,
        RoomName: String?,
        TargetUserId: EOS_ProductUserId?,
        bMute: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.RoomName = RoomName
        self.TargetUserId = TargetUserId
        self.bMute = bMute
    }
}
