import Foundation
import EOSSDK

/** This struct is passed in with a call to EOS_RTC_AddNotifyParticipantStatusChanged registered event. */
public struct SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo {

    /** The Product User ID of the user who initiated this request. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event. */
    public let RoomName: String?

    /** The participant whose status changed. */
    public let ParticipantId: EOS_ProductUserId?

    /** What status change occurred */
    public let ParticipantStatus: EOS_ERTCParticipantStatus

    /**
    The participant metadata items.This is only set if ParticipantStatus is EOS_RTCPS_Joined

    - Note: ``EOS/_tagEOS_RTC_ParticipantStatusChangedCallbackInfo/ParticipantMetadataCount``:
    The participant metadata items count.This is only set if ParticipantStatus is EOS_RTCPS_Joined
    */
    public let ParticipantMetadata: [SwiftEOS_RTC_ParticipantMetadata]?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_ParticipantStatusChangedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.ParticipantStatus = sdkObject.ParticipantStatus
        self.ParticipantMetadata = try sdkObject.ParticipantMetadata.array(safeNumericCast(exactly: sdkObject.ParticipantMetadataCount)).compactMap { 
            try SwiftEOS_RTC_ParticipantMetadata.init(sdkObject: $0.pointee) }
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_ParticipantStatusChangedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }

    /**
    Memberwise initializer

    - Parameter LocalUserId: The Product User ID of the user who initiated this request.
    - Parameter RoomName: The room associated with this event.
    - Parameter ParticipantId: The participant whose status changed.
    - Parameter ParticipantStatus: What status change occurred
    - Parameter ParticipantMetadata: The participant metadata items.This is only set if ParticipantStatus is EOS_RTCPS_Joined
    - Note: ``EOS/_tagEOS_RTC_ParticipantStatusChangedCallbackInfo/ParticipantMetadataCount``:
    The participant metadata items count.This is only set if ParticipantStatus is EOS_RTCPS_Joined
    */
    public init(
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        ParticipantStatus: EOS_ERTCParticipantStatus,
        ParticipantMetadata: [SwiftEOS_RTC_ParticipantMetadata]?
    ) {
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.ParticipantStatus = ParticipantStatus
        self.ParticipantMetadata = ParticipantMetadata
    }
}
