import Foundation
import EOSSDK
public struct SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYJOINLOBBYACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions {
        _tagEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYJOINLOBBYACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYLOBBYINVITEACCEPTED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions {
        _tagEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYLOBBYINVITEACCEPTED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYLOBBYINVITERECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions {
        _tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYLOBBYINVITERECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_Lobby_AddNotifyLobbyMemberStatusReceived function. */
public struct SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYLOBBYMEMBERSTATUSRECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions {
        _tagEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYLOBBYMEMBERSTATUSRECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYLOBBYMEMBERUPDATERECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions {
        _tagEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYLOBBYMEMBERUPDATERECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ADDNOTIFYLOBBYUPDATERECEIVED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions {
        _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ADDNOTIFYLOBBYUPDATERECEIVED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/**
 *  An attribute and its visibility setting stored with a lobby.
 *  Used to store both lobby and lobby member data
 * 
 * - see: release func: EOS_Lobby_Attribute_Release
 */
public struct SwiftEOS_Lobby_Attribute: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute  */
    public let Data: SwiftEOS_Lobby_AttributeData?

    /** Is this attribute public or private to the lobby and its members  */
    public let Visibility: EOS_ELobbyAttributeVisibility

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_Attribute {
        try _tagEOS_Lobby_Attribute(
            ApiVersion: ApiVersion,
            Data: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: Data?.buildSdkObject(pointerManager: pointerManager)),
            Visibility: Visibility
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_Attribute?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Data = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Data?.pointee)
        self.Visibility = sdkObject.Visibility
    }
}

/** Contains information about lobby and lobby member data */
public struct SwiftEOS_Lobby_AttributeData: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_ATTRIBUTEDATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the lobby attribute  */
    public let Key: String?
    public let Value: _tagEOS_Lobby_AttributeData.__Unnamed_union_Value

    /** Type of value stored in the union  */
    public let ValueType: EOS_ELobbyAttributeType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_AttributeData?
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
    ) throws -> _tagEOS_Lobby_AttributeData {
        _tagEOS_Lobby_AttributeData(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString),
            Value: Value,
            ValueType: ValueType
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_ATTRIBUTEDATA_API_LATEST,
        Key: String?,
        Value: _tagEOS_Lobby_AttributeData.__Unnamed_union_Value,
        ValueType: EOS_ELobbyAttributeType
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
        self.Value = Value
        self.ValueType = ValueType
    }
}

/** Input parameters for the EOS_Lobby_CopyLobbyDetailsHandleByInviteId function. */
public struct SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of an invitation to join the lobby  */
    public let InviteId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions {
        _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions(
            ApiVersion: ApiVersion,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYINVITEID_API_LATEST,
        InviteId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.InviteId = InviteId
    }
}

/** Input parameters for the EOS_Lobby_CopyLobbyDetailsHandleByUiEventId function. */
public struct SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST.  */
    public let ApiVersion: Int32

    /** UI Event associated with the lobby  */
    public let UiEventId: EOS_UI_EventId

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions {
        _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions(
            ApiVersion: ApiVersion,
            UiEventId: UiEventId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UiEventId = sdkObject.UiEventId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST,
        UiEventId: EOS_UI_EventId
    ) {
        self.ApiVersion = ApiVersion
        self.UiEventId = UiEventId
    }
}

/** Input parameters for the EOS_Lobby_CopyLobbyDetailsHandle function. */
public struct SwiftEOS_Lobby_CopyLobbyDetailsHandleOptions {

    /** API Version: Set this to EOS_LOBBY_COPYLOBBYDETAILSHANDLE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** The Product User ID of the local user making the request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_COPYLOBBYDETAILSHANDLE_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CopyLobbyDetailsHandleOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CopyLobbyDetailsHandleOptions {
        _tagEOS_Lobby_CopyLobbyDetailsHandleOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }
}

/** Output parameters for the EOS_Lobby_CreateLobby function. */
public struct SwiftEOS_Lobby_CreateLobbyCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The new lobby's ID  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CreateLobbyCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_CreateLobbyCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_CreateLobby function. */
public struct SwiftEOS_Lobby_CreateLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_CREATELOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user creating the lobby; this user will automatically join the lobby as its owner  */
    public let LocalUserId: EOS_ProductUserId?

    /** The maximum number of users who can be in the lobby at a time  */
    public let MaxLobbyMembers: Int

    /** The initial permission level of the lobby  */
    public let PermissionLevel: EOS_ELobbyPermissionLevel

    /**
     * If true, this lobby will be associated with presence information. A user's presence can only be associated with one lobby at a time.
     * This affects the ability of the Social Overlay to show game related actions to take in the user's social graph.
     * 
     * @note The Social Overlay can handle only one of the following three options at a time:
     * * using the bPresenceEnabled flags within the Sessions interface
     * * using the bPresenceEnabled flags within the Lobby interface
     * * using EOS_PresenceModification_SetJoinInfo
     * 
     * @see EOS_PresenceModification_SetJoinInfoOptions
     * @see EOS_Lobby_JoinLobbyOptions
     * @see EOS_Sessions_CreateSessionModificationOptions
     * @see EOS_Sessions_JoinSessionOptions
     */
    public let bPresenceEnabled: Bool

    /** Are members of the lobby allowed to invite others  */
    public let bAllowInvites: Bool

    /** Bucket ID associated with the lobby  */
    public let BucketId: String?

    /**
     * 
     * Is host migration allowed (will the lobby stay open if the original host leaves?) 
     * NOTE: EOS_Lobby_PromoteMember is still allowed regardless of this setting 
     */
    public let bDisableHostMigration: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CreateLobbyOptions {
        try _tagEOS_Lobby_CreateLobbyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            MaxLobbyMembers: try safeNumericCast(exactly: MaxLobbyMembers),
            PermissionLevel: PermissionLevel,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled),
            bAllowInvites: eosBoolFromSwiftBool(bAllowInvites),
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString),
            bDisableHostMigration: eosBoolFromSwiftBool(bDisableHostMigration)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CreateLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.MaxLobbyMembers = try safeNumericCast(exactly: sdkObject.MaxLobbyMembers)
        self.PermissionLevel = sdkObject.PermissionLevel
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
        self.bAllowInvites = try swiftBoolFromEosBool(sdkObject.bAllowInvites)
        self.BucketId = String(cString: sdkObject.BucketId)
        self.bDisableHostMigration = try swiftBoolFromEosBool(sdkObject.bDisableHostMigration)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_CREATELOBBY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        MaxLobbyMembers: Int,
        PermissionLevel: EOS_ELobbyPermissionLevel,
        bPresenceEnabled: Bool,
        bAllowInvites: Bool,
        BucketId: String?,
        bDisableHostMigration: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.MaxLobbyMembers = MaxLobbyMembers
        self.PermissionLevel = PermissionLevel
        self.bPresenceEnabled = bPresenceEnabled
        self.bAllowInvites = bAllowInvites
        self.BucketId = BucketId
        self.bDisableHostMigration = bDisableHostMigration
    }
}

/** Input parameters for the EOS_Lobby_CreateLobbySearch function. */
public struct SwiftEOS_Lobby_CreateLobbySearchOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_CREATELOBBYSEARCH_API_LATEST.  */
    public let ApiVersion: Int32

    /** Maximum number of results allowed from the search  */
    public let MaxResults: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CreateLobbySearchOptions {
        try _tagEOS_Lobby_CreateLobbySearchOptions(
            ApiVersion: ApiVersion,
            MaxResults: try safeNumericCast(exactly: MaxResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CreateLobbySearchOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxResults = try safeNumericCast(exactly: sdkObject.MaxResults)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_CREATELOBBYSEARCH_API_LATEST,
        MaxResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxResults = MaxResults
    }
}

/** Output parameters for the EOS_Lobby_DestroyLobby function. */
public struct SwiftEOS_Lobby_DestroyLobbyCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The destroyed lobby's ID  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_DestroyLobbyCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_DestroyLobbyCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_DestroyLobby function. */
public struct SwiftEOS_Lobby_DestroyLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_DESTROYLOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user requesting destruction of the lobby; this user must currently own the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /** The ID of the lobby to destroy  */
    public let LobbyId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_DestroyLobbyOptions {
        _tagEOS_Lobby_DestroyLobbyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_DestroyLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_DESTROYLOBBY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.LobbyId = LobbyId
    }
}

/** Input parameters for the EOS_Lobby_GetInviteCount function. */
public struct SwiftEOS_Lobby_GetInviteCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_GETINVITECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose cached lobby invitations you want to count  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_GetInviteCountOptions {
        _tagEOS_Lobby_GetInviteCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_GetInviteCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_GETINVITECOUNT_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Lobby_GetInviteIdByIndex function. */
public struct SwiftEOS_Lobby_GetInviteIdByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_GETINVITEIDBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who received the cached invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The index of the invitation ID to retrieve  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_GetInviteIdByIndexOptions {
        try _tagEOS_Lobby_GetInviteIdByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_GetInviteIdByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_GETINVITEIDBYINDEX_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}

/** Output parameters for the EOS_Lobby_OnJoinLobbyAcceptedCallback Function. */
public struct SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo {

    /** The Product User ID of the local user who is joining  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * 
     * The UI Event associated with this Join Game event.
     * This should be used with EOS_Lobby_CopyLobbyDetailsHandleByUiEventId to get a handle to be used
     * when calling EOS_Lobby_JoinLobby.
     */
    public let UiEventId: EOS_UI_EventId

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LocalUserId = sdkObject.LocalUserId
        self.UiEventId = sdkObject.UiEventId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Lobby_JoinLobby function. */
public struct SwiftEOS_Lobby_JoinLobbyCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_JoinLobbyCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_JoinLobbyCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_JoinLobby function. */
public struct SwiftEOS_Lobby_JoinLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_JOINLOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The handle of the lobby to join  */
    public let LobbyDetailsHandle: EOS_HLobbyDetails?

    /** The Product User ID of the local user joining the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * If true, this lobby will be associated with the user's presence information. A user can only associate one lobby at a time with their presence information.
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
     * @see EOS_Sessions_JoinSessionOptions
     */
    public let bPresenceEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_JoinLobbyOptions {
        _tagEOS_Lobby_JoinLobbyOptions(
            ApiVersion: ApiVersion,
            LobbyDetailsHandle: LobbyDetailsHandle,
            LocalUserId: LocalUserId,
            bPresenceEnabled: eosBoolFromSwiftBool(bPresenceEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_JoinLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyDetailsHandle = sdkObject.LobbyDetailsHandle
        self.LocalUserId = sdkObject.LocalUserId
        self.bPresenceEnabled = try swiftBoolFromEosBool(sdkObject.bPresenceEnabled)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_JOINLOBBY_API_LATEST,
        LobbyDetailsHandle: EOS_HLobbyDetails?,
        LocalUserId: EOS_ProductUserId?,
        bPresenceEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyDetailsHandle = LobbyDetailsHandle
        self.LocalUserId = LocalUserId
        self.bPresenceEnabled = bPresenceEnabled
    }
}

/** Output parameters for the EOS_Lobby_KickMember function. */
public struct SwiftEOS_Lobby_KickMemberCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_KickMemberCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_KickMemberCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_KickMember function. */
public struct SwiftEOS_Lobby_KickMemberOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_KICKMEMBER_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** The Product User ID of the local user requesting the removal; this user must be the lobby owner  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the lobby member to remove  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_KickMemberOptions {
        _tagEOS_Lobby_KickMemberOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_KickMemberOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_KICKMEMBER_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Lobby_LeaveLobby function. */
public struct SwiftEOS_Lobby_LeaveLobbyCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LeaveLobbyCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LeaveLobbyCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_LeaveLobby function. */
public struct SwiftEOS_Lobby_LeaveLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_LEAVELOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user leaving the lobby  */
    public let LocalUserId: EOS_ProductUserId?

    /** The ID of the lobby  */
    public let LobbyId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_LeaveLobbyOptions {
        _tagEOS_Lobby_LeaveLobbyOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LeaveLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_LEAVELOBBY_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.LobbyId = LobbyId
    }
}

/** Output parameters for the EOS_Lobby_OnLobbyInviteAcceptedCallback Function. */
public struct SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo {

    /** The invite ID  */
    public let InviteId: String?

    /** The Product User ID of the local user who received the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /** Lobby ID that the user has been invited to  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.InviteId = String(cString: sdkObject.InviteId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Lobby_OnLobbyInviteReceivedCallback Function. */
public struct SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo {

    /** The ID of the invitation  */
    public let InviteId: String?

    /** The Product User ID of the local user who received the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user who sent the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyInviteReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.InviteId = String(cString: sdkObject.InviteId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyInviteReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Lobby_AddNotifyLobbyMemberStatusReceived function. */
public struct SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo {

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /** Latest status of the user  */
    public let CurrentStatus: EOS_ELobbyMemberStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.TargetUserId = sdkObject.TargetUserId
        self.CurrentStatus = sdkObject.CurrentStatus
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Lobby_OnLobbyMemberUpdateReceivedCallback Function. */
public struct SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo {

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Lobby_OnLobbyUpdateReceivedCallback Function. */
public struct SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo {

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}

/** Output parameters for the EOS_Lobby_PromoteMember function. */
public struct SwiftEOS_Lobby_PromoteMemberCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the lobby where the user was promoted  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_PromoteMemberCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_PromoteMemberCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_PromoteMember function. */
public struct SwiftEOS_Lobby_PromoteMemberOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_PROMOTEMEMBER_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** The Product User ID of the local user making the request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the member to promote to owner of the lobby  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_PromoteMemberOptions {
        _tagEOS_Lobby_PromoteMemberOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_PromoteMemberOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_PROMOTEMEMBER_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Lobby_QueryInvites function. */
public struct SwiftEOS_Lobby_QueryInvitesCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user that made the request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_QueryInvitesCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_QueryInvitesCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_QueryInvites function. */
public struct SwiftEOS_Lobby_QueryInvitesOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_QUERYINVITES_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose invitations you want to retrieve  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_QueryInvitesOptions {
        _tagEOS_Lobby_QueryInvitesOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_QueryInvitesOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_QUERYINVITES_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Output parameters for the EOS_Lobby_RejectInvite function. */
public struct SwiftEOS_Lobby_RejectInviteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the invitation being rejected  */
    public let InviteId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_RejectInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.InviteId = String(cString: sdkObject.InviteId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_RejectInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_RejectInvite function. */
public struct SwiftEOS_Lobby_RejectInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_REJECTINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby associated with the invitation  */
    public let InviteId: String?

    /** The Product User ID of the local user who is rejecting the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_RejectInviteOptions {
        _tagEOS_Lobby_RejectInviteOptions(
            ApiVersion: ApiVersion,
            InviteId: pointerManager.managedPointerToBuffer(copyingArray: InviteId?.utf8CString),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_RejectInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.InviteId = String(cString: sdkObject.InviteId)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_REJECTINVITE_API_LATEST,
        InviteId: String?,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.InviteId = InviteId
        self.LocalUserId = LocalUserId
    }
}

/** Output parameters for the EOS_Lobby_SendInvite function. */
public struct SwiftEOS_Lobby_SendInviteCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_SendInviteCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_SendInviteCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_SendInvite function. */
public struct SwiftEOS_Lobby_SendInviteOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_SENDINVITE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the lobby associated with the invitation  */
    public let LobbyId: String?

    /** The Product User ID of the local user sending the invitation  */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the user receiving the invitation  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_SendInviteOptions {
        _tagEOS_Lobby_SendInviteOptions(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_SendInviteOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_SENDINVITE_API_LATEST,
        LobbyId: String?,
        LocalUserId: EOS_ProductUserId?,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}

/** Output parameters for the EOS_Lobby_UpdateLobby function. */
public struct SwiftEOS_Lobby_UpdateLobbyCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The ID of the lobby  */
    public let LobbyId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_UpdateLobbyCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Lobby_UpdateLobbyCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Lobby_UpdateLobbyModification function. */
public struct SwiftEOS_Lobby_UpdateLobbyModificationOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the local user making modifications. Must be the owner to modify lobby data, but any lobby member can modify their own attributes.  */
    public let LocalUserId: EOS_ProductUserId?

    /** The ID of the lobby  */
    public let LobbyId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_UpdateLobbyModificationOptions {
        _tagEOS_Lobby_UpdateLobbyModificationOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_UpdateLobbyModificationOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.LobbyId = String(cString: sdkObject.LobbyId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_UPDATELOBBYMODIFICATION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        LobbyId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.LobbyId = LobbyId
    }
}

/** Input parameters for the EOS_Lobby_UpdateLobby function. */
public struct SwiftEOS_Lobby_UpdateLobbyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_UPDATELOBBY_API_LATEST.  */
    public let ApiVersion: Int32

    /** Builder handle  */
    public let LobbyModificationHandle: EOS_HLobbyModification?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_UpdateLobbyOptions {
        _tagEOS_Lobby_UpdateLobbyOptions(
            ApiVersion: ApiVersion,
            LobbyModificationHandle: LobbyModificationHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_UpdateLobbyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyModificationHandle = sdkObject.LobbyModificationHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_UPDATELOBBY_API_LATEST,
        LobbyModificationHandle: EOS_HLobbyModification?
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyModificationHandle = LobbyModificationHandle
    }
}
