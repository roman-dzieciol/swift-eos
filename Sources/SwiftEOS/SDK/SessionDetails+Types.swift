import Foundation
import EOSSDK

/**
 *  An attribution value and its advertisement setting stored with a session.  
 * 
 * - see: release func: EOS_SessionDetails_Attribute_Release
 */
public struct SwiftEOS_SessionDetails_Attribute: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_ATTRIBUTE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Key/Value pair describing the attribute  */
    public let Data: SwiftEOS_Sessions_AttributeData?

    /** Is this attribution advertised with the backend or simply stored locally  */
    public let AdvertisementType: EOS_ESessionAttributeAdvertisementType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_Attribute {
        try _tagEOS_SessionDetails_Attribute(
            ApiVersion: ApiVersion,
            Data: try pointerManager.managedMutablePointer(copyingValueOrNilPointer: Data?.buildSdkObject(pointerManager: pointerManager)),
            AdvertisementType: AdvertisementType
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_Attribute?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Data = try SwiftEOS_Sessions_AttributeData.init(sdkObject: sdkObject.Data.pointee)
        self.AdvertisementType = sdkObject.AdvertisementType
    }
}

/** Input parameters for the EOS_SessionDetails_CopyInfo function. */
public struct SwiftEOS_SessionDetails_CopyInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_COPYINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_CopyInfoOptions {
        _tagEOS_SessionDetails_CopyInfoOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_CopyInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_COPYINFO_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_SessionDetails_CopySessionAttributeByIndex function. */
public struct SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * 
     * The index of the attribute to retrieve
     * 
     * @see EOS_SessionDetails_GetSessionAttributeCount
     */
    public let AttrIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_CopySessionAttributeByIndexOptions {
        try _tagEOS_SessionDetails_CopySessionAttributeByIndexOptions(
            ApiVersion: ApiVersion,
            AttrIndex: try safeNumericCast(exactly: AttrIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_CopySessionAttributeByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrIndex = try safeNumericCast(exactly: sdkObject.AttrIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYINDEX_API_LATEST,
        AttrIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AttrIndex = AttrIndex
    }
}

/** Input parameters for the EOS_SessionDetails_CopySessionAttributeByKey function. */
public struct SwiftEOS_SessionDetails_CopySessionAttributeByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The name of the key to get the session attribution for 
     * 
     * @see EOS_SessionModification_AddAttribute
     */
    public let AttrKey: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions {
        _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions(
            ApiVersion: ApiVersion,
            AttrKey: pointerManager.managedPointerToBuffer(copyingArray: AttrKey?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrKey = String(cString: sdkObject.AttrKey)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST,
        AttrKey: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AttrKey = AttrKey
    }
}

/** Input parameters for the EOS_SessionDetails_GetSessionAttributeCount function. */
public struct SwiftEOS_SessionDetails_GetSessionAttributeCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_GETSESSIONATTRIBUTECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_GetSessionAttributeCountOptions {
        _tagEOS_SessionDetails_GetSessionAttributeCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_GetSessionAttributeCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_GETSESSIONATTRIBUTECOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/**
 * Internal details about a session, found on both active sessions and within search results 
 * 
 * - see: release func: EOS_SessionDetails_Info_Release
 */
public struct SwiftEOS_SessionDetails_Info: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_INFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Session ID assigned by the backend service  */
    public let SessionId: String?

    /** IP address of this session as visible by the backend service  */
    public let HostAddress: String?

    /** Number of remaining open spaces on the session (NumPublicConnections - RegisteredPlayers  */
    public let NumOpenPublicConnections: Int

    /** Reference to the additional settings associated with this session  */
    public let Settings: SwiftEOS_SessionDetails_Settings?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionId = String(cString: sdkObject.SessionId)
        self.HostAddress = String(cString: sdkObject.HostAddress)
        self.NumOpenPublicConnections = try safeNumericCast(exactly: sdkObject.NumOpenPublicConnections)
        self.Settings = try SwiftEOS_SessionDetails_Settings.init(sdkObject: sdkObject.Settings.pointee)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_Info {
        try _tagEOS_SessionDetails_Info(
            ApiVersion: ApiVersion,
            SessionId: pointerManager.managedPointerToBuffer(copyingArray: SessionId?.utf8CString),
            HostAddress: pointerManager.managedPointerToBuffer(copyingArray: HostAddress?.utf8CString),
            NumOpenPublicConnections: try safeNumericCast(exactly: NumOpenPublicConnections),
            Settings: try pointerManager.managedPointer(copyingValueOrNilPointer: Settings?.buildSdkObject(pointerManager: pointerManager))
        )
    }
}

/** Common settings associated with a single session  */
public struct SwiftEOS_SessionDetails_Settings: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONDETAILS_SETTINGS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The main indexed parameter for this session, can be any string (ie "Region:GameMode")  */
    public let BucketId: String?

    /** Number of total players allowed in the session  */
    public let NumPublicConnections: Int

    /** Are players allowed to join the session while it is in the "in progress" state  */
    public let bAllowJoinInProgress: Bool

    /** Permission level describing allowed access to the session when joining or searching for the session  */
    public let PermissionLevel: EOS_EOnlineSessionPermissionLevel

    /** Are players allowed to send invites for the session  */
    public let bInvitesAllowed: Bool

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionDetails_Settings?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.BucketId = String(cString: sdkObject.BucketId)
        self.NumPublicConnections = try safeNumericCast(exactly: sdkObject.NumPublicConnections)
        self.bAllowJoinInProgress = try swiftBoolFromEosBool(sdkObject.bAllowJoinInProgress)
        self.PermissionLevel = sdkObject.PermissionLevel
        self.bInvitesAllowed = try swiftBoolFromEosBool(sdkObject.bInvitesAllowed)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionDetails_Settings {
        try _tagEOS_SessionDetails_Settings(
            ApiVersion: ApiVersion,
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString),
            NumPublicConnections: try safeNumericCast(exactly: NumPublicConnections),
            bAllowJoinInProgress: eosBoolFromSwiftBool(bAllowJoinInProgress),
            PermissionLevel: PermissionLevel,
            bInvitesAllowed: eosBoolFromSwiftBool(bInvitesAllowed)
        )
    }
}
