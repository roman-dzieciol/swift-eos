import Foundation
import EOSSDK

/** This struct is used to call EOS_RTC_AddNotifyDisconnected. */
public struct SwiftEOS_RTC_AddNotifyDisconnectedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTC_ADDNOTIFYDISCONNECTED_API_LATEST.  */
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
    ) throws -> _tagEOS_RTC_AddNotifyDisconnectedOptions {
        _tagEOS_RTC_AddNotifyDisconnectedOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_AddNotifyDisconnectedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTC_ADDNOTIFYDISCONNECTED_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
    }
}

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

/** This struct is passed in with a call to EOS_RTC_OnBlockParticipantCallback. */
public struct SwiftEOS_RTC_BlockParticipantCallbackInfo {

    /**
     * This returns:
     * EOS_Success if the channel was successfully blocked.
     * EOS_UnexpectedError otherwise.
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the users should be blocked on.  */
    public let RoomName: String?

    /** The Product User ID of the participant being blocked  */
    public let ParticipantId: EOS_ProductUserId?

    /** The block state that should have been set  */
    public let bBlocked: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_BlockParticipantCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bBlocked = try swiftBoolFromEosBool(sdkObject.bBlocked)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_BlockParticipantCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** This struct is passed in with a call to EOS_RTC_BlockParticipant. */
public struct SwiftEOS_RTC_BlockParticipantOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTC_BLOCKPARTICIPANT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the users should be blocked on.  */
    public let RoomName: String?

    /** Product User ID of the participant to block  */
    public let ParticipantId: EOS_ProductUserId?

    /** Block or unblock the participant  */
    public let bBlocked: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTC_BlockParticipantOptions {
        _tagEOS_RTC_BlockParticipantOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RoomName: pointerManager.managedPointerToBuffer(copyingArray: RoomName?.utf8CString),
            ParticipantId: ParticipantId,
            bBlocked: eosBoolFromSwiftBool(bBlocked)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_BlockParticipantOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ParticipantId = sdkObject.ParticipantId
        self.bBlocked = try swiftBoolFromEosBool(sdkObject.bBlocked)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_RTC_BLOCKPARTICIPANT_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RoomName: String?,
        ParticipantId: EOS_ProductUserId?,
        bBlocked: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RoomName = RoomName
        self.ParticipantId = ParticipantId
        self.bBlocked = bBlocked
    }
}

/** This struct is passed in with a call to EOS_RTC_AddNotifyDisconnected registered event. */
public struct SwiftEOS_RTC_DisconnectedCallbackInfo {

    /**
     * This returns:
     * EOS_Success The room was left cleanly.
     * EOS_NoConnection: There was a network issue connecting to the server (retryable).
     * EOS_RTC_UserKicked: The user has been kicked by the server (retryable).
     * EOS_ServiceFailure: A known error occurred during interaction with the server (retryable).
     * EOS_UnexpectedError Unexpected error (retryable).
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_DisconnectedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_DisconnectedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** This struct is passed in with a call to EOS_RTC_OnJoinRoomCallback. */
public struct SwiftEOS_RTC_JoinRoomCallbackInfo {

    /**
     * This returns:
     * EOS_Success if the channel was successfully joined.
     * EOS_NoConnection: unable to connect to RTC servers (retryable).
     * EOS_InvalidAuth: if the token is invalid (not retryable).
     * EOS_RTC_TooManyParticipants: if the room cannot accept more participants (not retryable).
     * EOS_AccessDenied: if the room name belongs to the Lobby voice system (not retryable).
     * EOS_UnexpectedError otherwise (retryable).
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the user was trying to join.  */
    public let RoomName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_JoinRoomCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_JoinRoomCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** This struct is used to call EOS_RTC_JoinRoom. */
public struct SwiftEOS_RTC_JoinRoomOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTC_JOINROOM_API_LATEST.  */
    public let ApiVersion: Int32

    /** The product user id of the user trying to request this operation.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the user would like to join.  */
    public let RoomName: String?

    /** The room the user would like to join.  */
    public let ClientBaseUrl: String?

    /** Authorization credential token to join the room.  */
    public let ParticipantToken: String?

    /** The participant id used to join the room. If set to NULL the LocalUserId will be used instead.  */
    public let ParticipantId: EOS_ProductUserId?

    /** Join room flags, e.g. EOS_RTC_JOINROOMFLAGS_ENABLE_ECHO. This is a bitwise-or union of the defined flags.  */
    public let Flags: Int

    /**
     * Enable or disable Manual Audio Input. If manual audio input is enabled audio recording is not started and the audio
     * buffers must be passed manually using EOS_RTCAudio_SendAudio.
     */
    public let bManualAudioInputEnabled: Bool

    /**
     * Enable or disable Manual Audio Output. If manual audio output is enabled audio rendering is not started and the audio
     * buffers must be received with EOS_RTCAudio_AddNotifyAudioBeforeRender and rendered manually.
     */
    public let bManualAudioOutputEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
        self.RoomName = String(cString: sdkObject.RoomName)
        self.ClientBaseUrl = String(cString: sdkObject.ClientBaseUrl)
        self.ParticipantToken = String(cString: sdkObject.ParticipantToken)
        self.ParticipantId = sdkObject.ParticipantId
        self.Flags = try safeNumericCast(exactly: sdkObject.Flags)
        self.bManualAudioInputEnabled = try swiftBoolFromEosBool(sdkObject.bManualAudioInputEnabled)
        self.bManualAudioOutputEnabled = try swiftBoolFromEosBool(sdkObject.bManualAudioOutputEnabled)
    }

    /** Memberwise initializer */
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

/** This struct is passed in with a call to EOS_RTC_OnLeaveRoomCallback. */
public struct SwiftEOS_RTC_LeaveRoomCallbackInfo {

    /**
     * This returns:
     * EOS_Success if the channel was successfully left.
     * EOS_AccessDenied if the room name belongs to the Lobby voice system.
     * EOS_UnexpectedError otherwise.
     */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room the user was trying to leave.  */
    public let RoomName: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_LeaveRoomCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.RoomName = String(cString: sdkObject.RoomName)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_RTC_LeaveRoomCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

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

    /** Memberwise initializer */
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

/** This struct is used to get information about a specific participant metadata item. */
public struct SwiftEOS_RTC_ParticipantMetadata {

    /** API Version: Set this to EOS_RTC_PARTICIPANTMETADATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** The unique key of this metadata item. The max size of the string is EOS_RTC_PARTICIPANTMETADATA_KEY_MAXCHARCOUNT.  */
    public let Key: String?

    /** The value of this metadata item. The max size of the string is EOS_RTC_PARTICIPANTMETADATA_VALUE_MAXCHARCOUNT.  */
    public let Value: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTC_ParticipantMetadata?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.Value = String(cString: sdkObject.Value)
    }
}

/** This struct is passed in with a call to EOS_RTC_AddNotifyParticipantStatusChanged registered event. */
public struct SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo {

    /** The Product User ID of the user who initiated this request.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The room associated with this event.  */
    public let RoomName: String?

    /** The participant whose status changed.  */
    public let ParticipantId: EOS_ProductUserId?

    /** What status change occurred  */
    public let ParticipantStatus: EOS_ERTCParticipantStatus

    /**
     * The participant metadata items count.
     * This is only set if ParticipantStatus is EOS_RTCPS_Joined
     * - array buffer: ParticipantMetadata
     */
    public let ParticipantMetadataCount: Int

    /**
     * The participant metadata items.
     * This is only set if ParticipantStatus is EOS_RTCPS_Joined
     * - array num: ParticipantMetadataCount
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
        self.ParticipantMetadataCount = try safeNumericCast(exactly: sdkObject.ParticipantMetadataCount)
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
}
