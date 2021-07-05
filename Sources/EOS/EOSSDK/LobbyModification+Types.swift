import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyModification_AddAttribute function. */
public struct SwiftEOS_LobbyModification_AddAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_ADDATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute to add to the lobby  */
    public let Attribute: SwiftEOS_Lobby_AttributeData?

    /** Is this attribute public or private to the lobby and its members  */
    public let Visibility: EOS_ELobbyAttributeVisibility

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_AddAttributeOptions {
        try _tagEOS_LobbyModification_AddAttributeOptions(
            ApiVersion: ApiVersion,
            Attribute: try pointerManager.managedPointer(copyingValueOrNilPointer: Attribute?.buildSdkObject(pointerManager: pointerManager)),
            Visibility: Visibility
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_AddAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Attribute = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Attribute?.pointee)
        self.Visibility = sdkObject.Visibility
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_ADDATTRIBUTE_API_LATEST,
        Attribute: SwiftEOS_Lobby_AttributeData?,
        Visibility: EOS_ELobbyAttributeVisibility
    ) {
        self.ApiVersion = ApiVersion
        self.Attribute = Attribute
        self.Visibility = Visibility
    }
}

/** Input parameters for the EOS_LobbyModification_AddMemberAttribute function. */
public struct SwiftEOS_LobbyModification_AddMemberAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute to add to the lobby member  */
    public let Attribute: SwiftEOS_Lobby_AttributeData?

    /** Is this attribute public or private to the rest of the lobby members  */
    public let Visibility: EOS_ELobbyAttributeVisibility

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_AddMemberAttributeOptions {
        try _tagEOS_LobbyModification_AddMemberAttributeOptions(
            ApiVersion: ApiVersion,
            Attribute: try pointerManager.managedPointer(copyingValueOrNilPointer: Attribute?.buildSdkObject(pointerManager: pointerManager)),
            Visibility: Visibility
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_AddMemberAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Attribute = try SwiftEOS_Lobby_AttributeData.init(sdkObject: sdkObject.Attribute?.pointee)
        self.Visibility = sdkObject.Visibility
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST,
        Attribute: SwiftEOS_Lobby_AttributeData?,
        Visibility: EOS_ELobbyAttributeVisibility
    ) {
        self.ApiVersion = ApiVersion
        self.Attribute = Attribute
        self.Visibility = Visibility
    }
}

/** Input parameters for the EOS_LobbyModification_RemoveAttribute function. */
public struct SwiftEOS_LobbyModification_RemoveAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_REMOVEATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the key  */
    public let Key: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_RemoveAttributeOptions {
        _tagEOS_LobbyModification_RemoveAttributeOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_RemoveAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_REMOVEATTRIBUTE_API_LATEST,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
    }
}

/** Input parameters for the EOS_LobbyModification_RemoveMemberAttribute function. */
public struct SwiftEOS_LobbyModification_RemoveMemberAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_REMOVEMEMBERATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the key  */
    public let Key: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_RemoveMemberAttributeOptions {
        _tagEOS_LobbyModification_RemoveMemberAttributeOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_RemoveMemberAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_REMOVEMEMBERATTRIBUTE_API_LATEST,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
    }
}

/** Input parameters for the EOS_LobbyModification_SetBucketIdOptions function. */
public struct SwiftEOS_LobbyModification_SetBucketIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The new bucket id associated with the lobby  */
    public let BucketId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetBucketIdOptions {
        _tagEOS_LobbyModification_SetBucketIdOptions(
            ApiVersion: ApiVersion,
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetBucketIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.BucketId = String(cString: sdkObject.BucketId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST,
        BucketId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.BucketId = BucketId
    }
}

/** Input parameters for the EOS_LobbyModification_SetInvitesAllowed Function. */
public struct SwiftEOS_LobbyModification_SetInvitesAllowedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_SETINVITESALLOWED_API_LATEST.  */
    public let ApiVersion: Int32

    /** If true then invites can currently be sent for the associated lobby  */
    public let bInvitesAllowed: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetInvitesAllowedOptions {
        _tagEOS_LobbyModification_SetInvitesAllowedOptions(
            ApiVersion: ApiVersion,
            bInvitesAllowed: eosBoolFromSwiftBool(bInvitesAllowed)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetInvitesAllowedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bInvitesAllowed = try swiftBoolFromEosBool(sdkObject.bInvitesAllowed)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETINVITESALLOWED_API_LATEST,
        bInvitesAllowed: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.bInvitesAllowed = bInvitesAllowed
    }
}

/** Input parameters for the EOS_LobbyModification_SetMaxMembers function. */
public struct SwiftEOS_LobbyModification_SetMaxMembersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** New maximum number of lobby members  */
    public let MaxMembers: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetMaxMembersOptions {
        try _tagEOS_LobbyModification_SetMaxMembersOptions(
            ApiVersion: ApiVersion,
            MaxMembers: try safeNumericCast(exactly: MaxMembers)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetMaxMembersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxMembers = try safeNumericCast(exactly: sdkObject.MaxMembers)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST,
        MaxMembers: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxMembers = MaxMembers
    }
}

/** Input parameters for the EOS_LobbyModification_SetPermissionLevel function. */
public struct SwiftEOS_LobbyModification_SetPermissionLevelOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST.  */
    public let ApiVersion: Int32

    /** Permission level of the lobby  */
    public let PermissionLevel: EOS_ELobbyPermissionLevel

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetPermissionLevelOptions {
        _tagEOS_LobbyModification_SetPermissionLevelOptions(
            ApiVersion: ApiVersion,
            PermissionLevel: PermissionLevel
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetPermissionLevelOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PermissionLevel = sdkObject.PermissionLevel
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST,
        PermissionLevel: EOS_ELobbyPermissionLevel
    ) {
        self.ApiVersion = ApiVersion
        self.PermissionLevel = PermissionLevel
    }
}
