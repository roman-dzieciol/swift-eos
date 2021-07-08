import Foundation
import EOSSDK

/** Input parameters for the EOS_Sessions_AddNotifyJoinSessionAccepted function. */
public struct SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions {
        _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_AddNotifyJoinSessionAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Sessions_AddNotifySessionInviteAccepted function. */
public struct SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ADDNOTIFYSESSIONINVITEACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions {
        _tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ADDNOTIFYSESSIONINVITEACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Sessions_AddNotifySessionInviteReceived function. */
public struct SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ADDNOTIFYSESSIONINVITERECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_AddNotifySessionInviteReceivedOptions {
        _tagEOS_Sessions_AddNotifySessionInviteReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_AddNotifySessionInviteReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ADDNOTIFYSESSIONINVITERECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Contains information about both session and search parameter attribution */
public struct SwiftEOS_Sessions_AttributeData: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ATTRIBUTEDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session attribute  */
    public let Key: String?
    public let Value: _tagEOS_Sessions_AttributeData.__Unnamed_union_Value

    /** Type of value stored in the union  */
    public let ValueType: EOS_ESessionAttributeType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_AttributeData?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
        self.Value = sdkObject.Value
        self.ValueType = sdkObject.ValueType
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_AttributeData {
        _tagEOS_Sessions_AttributeData(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            Value: Value,
            ValueType: ValueType
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ATTRIBUTEDATA_API_LATEST,
        Key: String?,
        Value: _tagEOS_Sessions_AttributeData.__Unnamed_union_Value,
        ValueType: EOS_ESessionAttributeType
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.Value = Value
        self.ValueType = ValueType
    }
}

/** Input parameters for the EOS_Sessions_CopyActiveSessionHandle function. */
public struct SwiftEOS_Sessions_CopyActiveSessionHandleOptions {

    /** API Version: Set this to EOS_SESSIONS_COPYACTIVESESSIONHANDLE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session for which to retrieve a session handle  */
    public let SessionName: String?

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYACTIVESESSIONHANDLE_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CopyActiveSessionHandleOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CopyActiveSessionHandleOptions {
        _tagEOS_Sessions_CopyActiveSessionHandleOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }
}

/** Input parameters for the EOS_Sessions_CopySessionHandleByInviteId function. */
public struct SwiftEOS_Sessions_CopySessionHandleByInviteIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Invite ID for which to retrieve a session handle  */
    public let InviteId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CopySessionHandleByInviteIdOptions {
        _tagEOS_Sessions_CopySessionHandleByInviteIdOptions(
            ApiVersion: ApiVersion,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CopySessionHandleByInviteIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST,
        InviteId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.InviteId = InviteId
    }
}

/** Input parameters for the EOS_Sessions_CopySessionHandleByUiEventId function. */
public struct SwiftEOS_Sessions_CopySessionHandleByUiEventIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** UI Event associated with the session  */
    public let UiEventId: EOS_UI_EventId

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions {
        _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions(
            ApiVersion: ApiVersion,
            UiEventId: UiEventId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CopySessionHandleByUiEventIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UiEventId = sdkObject.UiEventId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST,
        UiEventId: EOS_UI_EventId
    ) {
        self.ApiVersion = ApiVersion
        self.UiEventId = UiEventId
    }
}

/** Input parameters for the EOS_Sessions_CopySessionHandleForPresence function. */
public struct SwiftEOS_Sessions_CopySessionHandleForPresenceOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_COPYSESSIONHANDLEFORPRESENCE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user associated with the session  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CopySessionHandleForPresenceOptions {
        _tagEOS_Sessions_CopySessionHandleForPresenceOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CopySessionHandleForPresenceOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_COPYSESSIONHANDLEFORPRESENCE_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Sessions_CreateSessionModification function. */
public struct SwiftEOS_Sessions_CreateSessionModificationOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_CREATESESSIONMODIFICATION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to create  */
    public let SessionName: String?

    /** Bucket ID associated with the session  */
    public let BucketId: String?

    /** Maximum number of players allowed in the session  */
    public let MaxPlayers: Int

    /** The Product User ID of the local user associated with the session  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * If true, this session will be associated with presence. Only one session at a time can have this flag true.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * @note The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * @see EOS_PresenceModification_SetJoinInfoOptions
     * @see EOS_Lobby_CreateLobbyOptions
     * @see EOS_Lobby_JoinLobbyOptions
     * @see EOS_Sessions_JoinSessionOptions
     */
    public let bPresenceEnabled: Bool

    /**
     * Optional session id - set to a globally unique value to override the backend assignment
     * If not specified the backend service will assign one to the session.  Do not mix and match.
     * This value can be of size [EOS_SESSIONMODIFICATION_MIN_SESSIONIDOVERRIDE_LENGTH, EOS_SESSIONMODIFICATION_MAX_SESSIONIDOVERRIDE_LENGTH]
     */
    public let SessionId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CreateSessionModificationOptions {
        try _tagEOS_Sessions_CreateSessionModificationOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString),
            MaxPlayers: try safeNumericCast(exactly: MaxPlayers),
            LocalUserId: LocalUserId,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled),
            SessionId: pointerManager.managedPointerToBuffer(copyingArray: SessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CreateSessionModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.BucketId = String(cString: sdkObject.BucketId)
        self.MaxPlayers = try safeNumericCast(exactly: sdkObject.MaxPlayers)
        self.LocalUserId = sdkObject.LocalUserId
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
        self.SessionId = String(cString: sdkObject.SessionId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_CREATESESSIONMODIFICATION_API_LATEST,
        SessionName: String?,
        BucketId: String?,
        MaxPlayers: Int,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool,
        SessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.BucketId = BucketId
        self.MaxPlayers = MaxPlayers
        self.LocalUserId = LocalUserId
        self.bPresenceEnabled = bPresenceEnabled
        self.SessionId = SessionId
    }
}

/** Input parameters for the EOS_Sessions_CreateSessionSearch function. */
public struct SwiftEOS_Sessions_CreateSessionSearchOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST.  */
    public let ApiVersion: Int32

    /** Max number of results to return  */
    public let MaxSearchResults: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_CreateSessionSearchOptions {
        try _tagEOS_Sessions_CreateSessionSearchOptions(
            ApiVersion: ApiVersion,
            MaxSearchResults: try safeNumericCast(exactly: MaxSearchResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_CreateSessionSearchOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxSearchResults = try safeNumericCast(exactly: sdkObject.MaxSearchResults)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST,
        MaxSearchResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxSearchResults = MaxSearchResults
    }
}

/** Output parameters for the EOS_Sessions_DestroySession function. */
public struct SwiftEOS_Sessions_DestroySessionCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_DestroySessionCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_DestroySessionCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_DestroySession function. */
public struct SwiftEOS_Sessions_DestroySessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_DESTROYSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to destroy  */
    public let SessionName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_DestroySessionOptions {
        _tagEOS_Sessions_DestroySessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_DestroySessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_DESTROYSESSION_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}

/** Input parameters for the EOS_Sessions_DumpSessionState function. */
public struct SwiftEOS_Sessions_DumpSessionStateOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session  */
    public let SessionName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_DumpSessionStateOptions {
        _tagEOS_Sessions_DumpSessionStateOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_DumpSessionStateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_DUMPSESSIONSTATE_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}
public struct SwiftEOS_Sessions_EndSessionCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_EndSessionCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_EndSessionCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_EndSession function. */
public struct SwiftEOS_Sessions_EndSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ENDSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to set as no long in progress  */
    public let SessionName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_EndSessionOptions {
        _tagEOS_Sessions_EndSessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_EndSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ENDSESSION_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}

/** Input parameters for the EOS_Sessions_GetInviteCount function. */
public struct SwiftEOS_Sessions_GetInviteCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_GETINVITECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who has one or more invitations in the cache  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_GetInviteCountOptions {
        _tagEOS_Sessions_GetInviteCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_GetInviteCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_GETINVITECOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Sessions_GetInviteIdByIndex function. */
public struct SwiftEOS_Sessions_GetInviteIdByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_GETINVITEIDBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who has an invitation in the cache  */
    public let LocalUserId: EOS_ProductUserId?

    /** Index of the invite ID to retrieve  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_GetInviteIdByIndexOptions {
        try _tagEOS_Sessions_GetInviteIdByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_GetInviteIdByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_GETINVITEIDBYINDEX_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}

/** Input parameters for the EOS_Sessions_IsUserInSession function. */
public struct SwiftEOS_Sessions_IsUserInSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_ISUSERINSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Active session name to search within  */
    public let SessionName: String?

    /** Product User ID to search for in the session  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_IsUserInSessionOptions {
        _tagEOS_Sessions_IsUserInSessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_IsUserInSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_ISUSERINSESSION_API_LATEST,
        SessionName: String?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Sessions_OnJoinSessionAcceptedCallback function. */
public struct SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo {

    /** The Product User ID for the user who initialized the game  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * The UI Event associated with this Join Game event.
     * This should be used with EOS_Sessions_CopySessionHandleByUiEventId to get a handle to be used
     * when calling EOS_Sessions_JoinSession.
     */
    public let UiEventId: EOS_UI_EventId

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_JoinSessionAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.UiEventId = sdkObject.UiEventId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_JoinSessionAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Sessions_JoinSession function. */
public struct SwiftEOS_Sessions_JoinSessionCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_JoinSessionCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_JoinSessionCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_JoinSession function. */
public struct SwiftEOS_Sessions_JoinSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_JOINSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to create after joining session  */
    public let SessionName: String?

    /** Session handle to join  */
    public let SessionHandle: EOS_HSessionDetails?

    /** The Product User ID of the local user who is joining the session  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * If true, this session will be associated with presence. Only one session at a time can have this flag true.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * @note The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * @see EOS_PresenceModification_SetJoinInfoOptions
     * @see EOS_Lobby_CreateLobbyOptions
     * @see EOS_Lobby_JoinLobbyOptions
     * @see EOS_Sessions_CreateSessionModificationOptions
     */
    public let bPresenceEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_JoinSessionOptions {
        _tagEOS_Sessions_JoinSessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            SessionHandle: SessionHandle,
            LocalUserId: LocalUserId,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_JoinSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.SessionHandle = sdkObject.SessionHandle
        self.LocalUserId = sdkObject.LocalUserId
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_JOINSESSION_API_LATEST,
        SessionName: String?,
        SessionHandle: EOS_HSessionDetails?,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.SessionHandle = SessionHandle
        self.LocalUserId = LocalUserId
        self.bPresenceEnabled = bPresenceEnabled
    }
}

/** Output parameters for the EOS_Sessions_QueryInvites function. */
public struct SwiftEOS_Sessions_QueryInvitesCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User of the local user who made the request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_QueryInvitesCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_QueryInvitesCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_QueryInvites function. */
public struct SwiftEOS_Sessions_QueryInvitesOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_QUERYINVITES_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID to query for invitations  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_QueryInvitesOptions {
        _tagEOS_Sessions_QueryInvitesOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_QueryInvitesOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_QUERYINVITES_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
public struct SwiftEOS_Sessions_RegisterPlayersCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_RegisterPlayersCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_RegisterPlayersCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_RegisterPlayers function. */
public struct SwiftEOS_Sessions_RegisterPlayersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_REGISTERPLAYERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session for which to register players  */
    public let SessionName: String?

    /**
     * Array of players to register with the session 
     * - array num: PlayersToRegisterCount
     */
    public let PlayersToRegister: [EOS_ProductUserId]?

    /**
     * Number of players in the array 
     * - array buffer: PlayersToRegister
     */
    public let PlayersToRegisterCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_RegisterPlayersOptions {
        try _tagEOS_Sessions_RegisterPlayersOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            PlayersToRegister: pointerManager.managedMutablePointerToBuffer(copyingArray: PlayersToRegister),
            PlayersToRegisterCount: try safeNumericCast(exactly: PlayersToRegisterCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_RegisterPlayersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.PlayersToRegister = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.PlayersToRegister,
            count: sdkObject.PlayersToRegisterCount
        )
        self.PlayersToRegisterCount = try safeNumericCast(exactly: sdkObject.PlayersToRegisterCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_REGISTERPLAYERS_API_LATEST,
        SessionName: String?,
        PlayersToRegister: [EOS_ProductUserId]?,
        PlayersToRegisterCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.PlayersToRegister = PlayersToRegister
        self.PlayersToRegisterCount = PlayersToRegisterCount
    }
}

/** Output parameters for the EOS_Sessions_RejectInvite function. */
public struct SwiftEOS_Sessions_RejectInviteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_RejectInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_RejectInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_RejectInvite function. */
public struct SwiftEOS_Sessions_RejectInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_REJECTINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user rejecting the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The invite ID to reject  */
    public let InviteId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_RejectInviteOptions {
        _tagEOS_Sessions_RejectInviteOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_RejectInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_REJECTINVITE_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        InviteId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.InviteId = InviteId
    }
}

/** Output parameters for the EOS_Sessions_SendInvite function. */
public struct SwiftEOS_Sessions_SendInviteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SendInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_SendInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_SendInvite function. */
public struct SwiftEOS_Sessions_SendInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_SENDINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session associated with the invite  */
    public let SessionName: String?

    /** The Product User ID of the local user sending the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User of the remote user receiving the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_SendInviteOptions {
        _tagEOS_Sessions_SendInviteOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SendInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_SENDINVITE_API_LATEST,
        SessionName: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Sessions_OnSessionInviteAcceptedCallback function. */
public struct SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo {

    /** Session ID that should be used for joining  */
    public let SessionId: String?

    /** The Product User ID of the user who accepted the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /** Invite ID that was accepted  */
    public let InviteId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SessionInviteAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.SessionId = String(cString: sdkObject.SessionId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_SessionInviteAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Sessions_OnSessionInviteReceivedCallback function. */
public struct SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo {

    /** The Product User ID of the user who received the invite  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /** Invite ID used to retrieve the actual session details  */
    public let InviteId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_SessionInviteReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_SessionInviteReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}
public struct SwiftEOS_Sessions_StartSessionCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_StartSessionCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_StartSessionCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_StartSession function. */
public struct SwiftEOS_Sessions_StartSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_STARTSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to set in progress  */
    public let SessionName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_StartSessionOptions {
        _tagEOS_Sessions_StartSessionOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_StartSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_STARTSESSION_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}
public struct SwiftEOS_Sessions_UnregisterPlayersCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UnregisterPlayersCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_UnregisterPlayersCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_UnregisterPlayers function. */
public struct SwiftEOS_Sessions_UnregisterPlayersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session for which to unregister players  */
    public let SessionName: String?

    /**
     * Array of players to unregister from the session 
     * - array num: PlayersToUnregisterCount
     */
    public let PlayersToUnregister: [EOS_ProductUserId]?

    /**
     * Number of players in the array 
     * - array buffer: PlayersToUnregister
     */
    public let PlayersToUnregisterCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_UnregisterPlayersOptions {
        try _tagEOS_Sessions_UnregisterPlayersOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString),
            PlayersToUnregister: pointerManager.managedMutablePointerToBuffer(copyingArray: PlayersToUnregister),
            PlayersToUnregisterCount: try safeNumericCast(exactly: PlayersToUnregisterCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UnregisterPlayersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
        self.PlayersToUnregister = try trivialOptionalArrayFromTrivialOptionalPointer(
            start: sdkObject.PlayersToUnregister,
            count: sdkObject.PlayersToUnregisterCount
        )
        self.PlayersToUnregisterCount = try safeNumericCast(exactly: sdkObject.PlayersToUnregisterCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_UNREGISTERPLAYERS_API_LATEST,
        SessionName: String?,
        PlayersToUnregister: [EOS_ProductUserId]?,
        PlayersToUnregisterCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
        self.PlayersToUnregister = PlayersToUnregister
        self.PlayersToUnregisterCount = PlayersToUnregisterCount
    }
}

/** Output parameters for the EOS_Sessions_UpdateSession function. */
public struct SwiftEOS_Sessions_UpdateSessionCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** Name of the session that was created/modified  */
    public let SessionName: String?

    /** ID of the session that was created/modified  */
    public let SessionId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UpdateSessionCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.SessionName = String(cString: sdkObject.SessionName)
        self.SessionId = String(cString: sdkObject.SessionId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Sessions_UpdateSessionCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Sessions_UpdateSessionModification function. */
public struct SwiftEOS_Sessions_UpdateSessionModificationOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_UPDATESESSIONMODIFICATION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the session to update  */
    public let SessionName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_UpdateSessionModificationOptions {
        _tagEOS_Sessions_UpdateSessionModificationOptions(
            ApiVersion: ApiVersion,
            SessionName: pointerManager.managedPointerToBuffer(copyingArray: SessionName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UpdateSessionModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionName = String(cString: sdkObject.SessionName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_UPDATESESSIONMODIFICATION_API_LATEST,
        SessionName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionName = SessionName
    }
}
public struct SwiftEOS_Sessions_UpdateSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_UPDATESESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Builder handle  */
    public let SessionModificationHandle: EOS_HSessionModification?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_UpdateSessionOptions {
        _tagEOS_Sessions_UpdateSessionOptions(
            ApiVersion: ApiVersion,
            SessionModificationHandle: SessionModificationHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UpdateSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionModificationHandle = sdkObject.SessionModificationHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_UPDATESESSION_API_LATEST,
        SessionModificationHandle: EOS_HSessionModification?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionModificationHandle = SessionModificationHandle
    }
}
