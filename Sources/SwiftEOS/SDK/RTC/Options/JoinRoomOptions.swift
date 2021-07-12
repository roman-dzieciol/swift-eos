import Foundation
import EOSSDK

/** This struct is used to call `EOS_RTC_JoinRoom`. */
public struct SwiftEOS_RTC_JoinRoomOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_RTC_JOINROOM_API_LATEST`. */
    public let ApiVersion: Int32

    /** The product user id of the user trying to request this operation. */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the user would like to join. */
    public let RoomName: String?

    /** The room the user would like to join. */
    public let ClientBaseUrl: String?

    /** Authorization credential token to join the room. */
    public let ParticipantToken: String?

    /** The participant id used to join the room. If set to NULL the LocalUserId will be used instead. */
    public let ParticipantId: EOS_ProductUserId?

    /** Join room flags, e.g. `EOS_RTC_JOINROOMFLAGS_ENABLE_ECHO`. This is a bitwise-or union of the defined flags. */
    public let Flags: Int

    /**
    Enable or disable Manual Audio Input. If manual audio input is enabled audio recording is not started and the audio
    buffers must be passed manually using `EOS_RTCAudio_SendAudio`.
    */
    public let bManualAudioInputEnabled: Bool

    /**
    Enable or disable Manual Audio Output. If manual audio output is enabled audio rendering is not started and the audio
    buffers must be received with `EOS_RTCAudio_AddNotifyAudioBeforeRender` and rendered manually.
    */
    public let bManualAudioOutputEnabled: Bool

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTC_JoinRoomOptions {
        try _tagEOS_RTC_JoinRoomOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            ClientBaseUrl: pointerManager.managedPointerToBuffer(copyingArray: ClientBaseUrl?.utf8CString),
            ParticipantToken: pointerManager.managedPointerToBuffer(copyingArray: ParticipantToken?.utf8CString),
            ParticipantId: ParticipantId,
            Flags: try safeNumericCast(exactly: Flags),
            bManualAudioInputEnabled: eosBoolFromSwiftBool(bManualAudioInputEnabled),
            bManualAudioOutputEnabled: eosBoolFromSwiftBool(bManualAudioOutputEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_JoinRoomOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = stringFromOptionalCStringPointer(sdkObject.RoomName)
        self.ClientBaseUrl = stringFromOptionalCStringPointer(sdkObject.ClientBaseUrl)
        self.ParticipantToken = stringFromOptionalCStringPointer(sdkObject.ParticipantToken)
        self.ParticipantId = sdkObject.ParticipantId
        self.Flags = try safeNumericCast(exactly: sdkObject.Flags)
        self.bManualAudioInputEnabled = try swiftBoolFromEosBool(sdkObject.bManualAudioInputEnabled)
        self.bManualAudioOutputEnabled = try swiftBoolFromEosBool(sdkObject.bManualAudioOutputEnabled)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_RTC_JOINROOM_API_LATEST`.
    - Parameter LocalUserId: The product user id of the user trying to request this operation.
    - Parameter RoomName: The room the user would like to join.
    - Parameter ClientBaseUrl: The room the user would like to join.
    - Parameter ParticipantToken: Authorization credential token to join the room.
    - Parameter ParticipantId: The participant id used to join the room. If set to NULL the LocalUserId will be used instead.
    - Parameter Flags: Join room flags, e.g. `EOS_RTC_JOINROOMFLAGS_ENABLE_ECHO`. This is a bitwise-or union of the defined flags.
    - Parameter bManualAudioInputEnabled: Enable or disable Manual Audio Input. If manual audio input is enabled audio recording is not started and the audio
    buffers must be passed manually using `EOS_RTCAudio_SendAudio`.
    - Parameter bManualAudioOutputEnabled: Enable or disable Manual Audio Output. If manual audio output is enabled audio rendering is not started and the audio
    buffers must be received with `EOS_RTCAudio_AddNotifyAudioBeforeRender` and rendered manually.
    */
    public init(
        ApiVersion: Int32 = EOS_RTC_JOINROOM_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ClientBaseUrl: String?,
        ParticipantToken: String?,
        ParticipantId: EOS_ProductUserId?,
        Flags: Int,
        bManualAudioInputEnabled: Bool,
        bManualAudioOutputEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ClientBaseUrl = ClientBaseUrl
        self.ParticipantToken = ParticipantToken
        self.ParticipantId = ParticipantId
        self.Flags = Flags
        self.bManualAudioInputEnabled = bManualAudioInputEnabled
        self.bManualAudioOutputEnabled = bManualAudioOutputEnabled
    }
}
