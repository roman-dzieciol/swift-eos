import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionModification_AddAttribute function. */
public struct SwiftEOS_SessionModification_AddAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_ADDATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute to add to the session  */
    public let SessionAttribute: SwiftEOS_Sessions_AttributeData?

    /** Is this attribution advertised with the backend or simply stored locally  */
    public let AdvertisementType: EOS_ESessionAttributeAdvertisementType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_AddAttributeOptions {
        try _tagEOS_SessionModification_AddAttributeOptions(
            ApiVersion: ApiVersion,
            SessionAttribute: try pointerManager.managedPointer(copyingValueOrNilPointer: SessionAttribute?.buildSdkObject(pointerManager: pointerManager)),
            AdvertisementType: AdvertisementType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_AddAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionAttribute = try SwiftEOS_Sessions_AttributeData.init(sdkObject: sdkObject.SessionAttribute.pointee)
        self.AdvertisementType = sdkObject.AdvertisementType
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_ADDATTRIBUTE_API_LATEST,
        SessionAttribute: SwiftEOS_Sessions_AttributeData?,
        AdvertisementType: EOS_ESessionAttributeAdvertisementType
    ) {
        self.ApiVersion = ApiVersion
        self.SessionAttribute = SessionAttribute
        self.AdvertisementType = AdvertisementType
    }
}

/** Input parameters for the EOS_SessionModification_RemoveAttribute function. */
public struct SwiftEOS_SessionModification_RemoveAttributeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Session attribute to remove from the session  */
    public let Key: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_RemoveAttributeOptions {
        _tagEOS_SessionModification_RemoveAttributeOptions(
            ApiVersion: ApiVersion,
            Key: pointerManager.managedPointerToBuffer(copyingArray: Key?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_RemoveAttributeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Key = String(cString: sdkObject.Key)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        Key: String?
    ) {
        self.ApiVersion = ApiVersion
        self.Key = Key
    }
}

/** Input parameters for the EOS_SessionModification_SetBucketId function. */
public struct SwiftEOS_SessionModification_SetBucketIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETBUCKETID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The new bucket id associated with the session  */
    public let BucketId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetBucketIdOptions {
        _tagEOS_SessionModification_SetBucketIdOptions(
            ApiVersion: ApiVersion,
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetBucketIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.BucketId = String(cString: sdkObject.BucketId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETBUCKETID_API_LATEST,
        BucketId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.BucketId = BucketId
    }
}

/** Input parameters for the EOS_SessionModification_SetHostAddress function. */
public struct SwiftEOS_SessionModification_SetHostAddressOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST.  */
    public let ApiVersion: Int32

    /** A string representing the host address for the session, its meaning is up to the application  */
    public let HostAddress: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetHostAddressOptions {
        _tagEOS_SessionModification_SetHostAddressOptions(
            ApiVersion: ApiVersion,
            HostAddress: pointerManager.managedPointerToBuffer(copyingArray: HostAddress?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetHostAddressOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.HostAddress = String(cString: sdkObject.HostAddress)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST,
        HostAddress: String?
    ) {
        self.ApiVersion = ApiVersion
        self.HostAddress = HostAddress
    }
}

/** Input parameters for the EOS_SessionModification_SetInvitesAllowed function. */
public struct SwiftEOS_SessionModification_SetInvitesAllowedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETINVITESALLOWED_API_LATEST.  */
    public let ApiVersion: Int32

    /** If true then invites can currently be sent for the associated session  */
    public let bInvitesAllowed: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetInvitesAllowedOptions {
        _tagEOS_SessionModification_SetInvitesAllowedOptions(
            ApiVersion: ApiVersion,
            bInvitesAllowed: eosBoolFromSwiftBool(bInvitesAllowed)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetInvitesAllowedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bInvitesAllowed = try swiftBoolFromEosBool(sdkObject.bInvitesAllowed)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETINVITESALLOWED_API_LATEST,
        bInvitesAllowed: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.bInvitesAllowed = bInvitesAllowed
    }
}

/** Input parameters for the EOS_SessionModification_SetJoinInProgressAllowed function. */
public struct SwiftEOS_SessionModification_SetJoinInProgressAllowedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST.  */
    public let ApiVersion: Int32

    /** Does the session allow join in progress  */
    public let bAllowJoinInProgress: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetJoinInProgressAllowedOptions {
        _tagEOS_SessionModification_SetJoinInProgressAllowedOptions(
            ApiVersion: ApiVersion,
            bAllowJoinInProgress: eosBoolFromSwiftBool(bAllowJoinInProgress)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetJoinInProgressAllowedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.bAllowJoinInProgress = try swiftBoolFromEosBool(sdkObject.bAllowJoinInProgress)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETJOININPROGRESSALLOWED_API_LATEST,
        bAllowJoinInProgress: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.bAllowJoinInProgress = bAllowJoinInProgress
    }
}

/** Input parameters for the EOS_SessionModification_SetMaxPlayers function. */
public struct SwiftEOS_SessionModification_SetMaxPlayersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Max number of players to allow in the session  */
    public let MaxPlayers: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetMaxPlayersOptions {
        try _tagEOS_SessionModification_SetMaxPlayersOptions(
            ApiVersion: ApiVersion,
            MaxPlayers: try safeNumericCast(exactly: MaxPlayers)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetMaxPlayersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxPlayers = try safeNumericCast(exactly: sdkObject.MaxPlayers)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETMAXPLAYERS_API_LATEST,
        MaxPlayers: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxPlayers = MaxPlayers
    }
}

/** Input parameters for the EOS_SessionModification_SetPermissionLevel function. */
public struct SwiftEOS_SessionModification_SetPermissionLevelOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETPERMISSIONLEVEL_API_LATEST.  */
    public let ApiVersion: Int32

    /** Permission level to set on the sesion  */
    public let PermissionLevel: EOS_EOnlineSessionPermissionLevel

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetPermissionLevelOptions {
        _tagEOS_SessionModification_SetPermissionLevelOptions(
            ApiVersion: ApiVersion,
            PermissionLevel: PermissionLevel
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetPermissionLevelOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PermissionLevel = sdkObject.PermissionLevel
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETPERMISSIONLEVEL_API_LATEST,
        PermissionLevel: EOS_EOnlineSessionPermissionLevel
    ) {
        self.ApiVersion = ApiVersion
        self.PermissionLevel = PermissionLevel
    }
}
