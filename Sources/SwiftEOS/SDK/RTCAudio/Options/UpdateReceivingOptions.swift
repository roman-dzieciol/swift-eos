import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTCAudio_UpdateReceiving. */
public struct SwiftEOS_RTCAudio_UpdateReceivingOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCAUDIO_UPDATERECEIVING_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room this settings should be applied on.  */
    public let RoomName: String?

    /** The participant to modify or null to update the global configuration  */
    public let ParticipantId: EOS_ProductUserId?

    /** Mute or unmute audio track  */
    public let bAudioEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAudio_UpdateReceivingOptions {
        _tagEOS_RTCAudio_UpdateReceivingOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            ParticipantId: ParticipantId,
            bAudioEnabled: eosBoolFromSwiftBool(bAudioEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAudio_UpdateReceivingOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bAudioEnabled = try swiftBoolFromEosBool(sdkObject.bAudioEnabled)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_RTCAUDIO_UPDATERECEIVING_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the user trying to request this operation. 
     * - Parameter RoomName:  The room this settings should be applied on. 
     * - Parameter ParticipantId:  The participant to modify or null to update the global configuration 
     * - Parameter bAudioEnabled:  Mute or unmute audio track 
     */
    public init(
        ApiVersion: Int32 = EOS_RTCAUDIO_UPDATERECEIVING_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bAudioEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bAudioEnabled = bAudioEnabled
    }
}
