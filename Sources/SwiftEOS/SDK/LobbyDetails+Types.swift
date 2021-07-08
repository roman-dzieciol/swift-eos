import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyDetails_CopyAttributeByIndex function. */
public struct SwiftEOS_LobbyDetails_CopyAttributeByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The index of the attribute to retrieve
     * 
     * @see EOS_LobbyDetails_GetAttributeCount
     */
    public let AttrIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyAttributeByIndexOptions {
        try _tagEOS_LobbyDetails_CopyAttributeByIndexOptions(
            ApiVersion: ApiVersion,
            AttrIndex: try safeNumericCast(exactly: AttrIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyAttributeByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrIndex = try safeNumericCast(exactly: sdkObject.AttrIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST,
        AttrIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AttrIndex = AttrIndex
    }
}

/** Input parameters for the EOS_LobbyDetails_CopyAttributeByKey function. */
public struct SwiftEOS_LobbyDetails_CopyAttributeByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYATTRIBUTEBYKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the attribute  */
    public let AttrKey: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyAttributeByKeyOptions {
        _tagEOS_LobbyDetails_CopyAttributeByKeyOptions(
            ApiVersion: ApiVersion,
            AttrKey: pointerManager.managedPointerToBuffer(copyingArray: AttrKey?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyAttributeByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrKey = String(cString: sdkObject.AttrKey)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYATTRIBUTEBYKEY_API_LATEST,
        AttrKey: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AttrKey = AttrKey
    }
}

/** Input parameters for the EOS_LobbyDetails_CopyInfo function. */
public struct SwiftEOS_LobbyDetails_CopyInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyInfoOptions {
        _tagEOS_LobbyDetails_CopyInfoOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYINFO_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_LobbyDetails_CopyMemberAttributeByIndex function. */
public struct SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /** The index of the attribute to copy  */
    public let AttrIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions {
        try _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AttrIndex: try safeNumericCast(exactly: AttrIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AttrIndex = try safeNumericCast(exactly: sdkObject.AttrIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AttrIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AttrIndex = AttrIndex
    }
}

/** Input parameters for the EOS_LobbyDetails_CopyMemberAttributeByKey function. */
public struct SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /** Name of the attribute to copy  */
    public let AttrKey: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions {
        _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AttrKey: pointerManager.managedPointerToBuffer(copyingArray: AttrKey?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AttrKey = String(cString: sdkObject.AttrKey)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYKEY_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AttrKey: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AttrKey = AttrKey
    }
}

/** Input parameters for the EOS_LobbyDetails_GetAttributeCount function. */
public struct SwiftEOS_LobbyDetails_GetAttributeCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETATTRIBUTECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetAttributeCountOptions {
        _tagEOS_LobbyDetails_GetAttributeCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetAttributeCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETATTRIBUTECOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_LobbyDetails_GetLobbyOwner function. */
public struct SwiftEOS_LobbyDetails_GetLobbyOwnerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETLOBBYOWNER_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetLobbyOwnerOptions {
        _tagEOS_LobbyDetails_GetLobbyOwnerOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetLobbyOwnerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETLOBBYOWNER_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/** Input parameters for the EOS_LobbyDetails_GetMemberAttributeCount function. */
public struct SwiftEOS_LobbyDetails_GetMemberAttributeCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETMEMBERATTRIBUTECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetMemberAttributeCountOptions {
        _tagEOS_LobbyDetails_GetMemberAttributeCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetMemberAttributeCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETMEMBERATTRIBUTECOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}

/** Input parameters for the EOS_LobbyDetails_GetMemberByIndex function. */
public struct SwiftEOS_LobbyDetails_GetMemberByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETMEMBERBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** Index of the member to retrieve  */
    public let MemberIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetMemberByIndexOptions {
        try _tagEOS_LobbyDetails_GetMemberByIndexOptions(
            ApiVersion: ApiVersion,
            MemberIndex: try safeNumericCast(exactly: MemberIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetMemberByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MemberIndex = try safeNumericCast(exactly: sdkObject.MemberIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETMEMBERBYINDEX_API_LATEST,
        MemberIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MemberIndex = MemberIndex
    }
}

/** Input parameters for the EOS_LobbyDetails_GetMemberCount function. */
public struct SwiftEOS_LobbyDetails_GetMemberCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_GETMEMBERCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetMemberCountOptions {
        _tagEOS_LobbyDetails_GetMemberCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetMemberCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETMEMBERCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}

/**
 * 
 * - see: release func: EOS_LobbyDetails_Info_Release
 */
public struct SwiftEOS_LobbyDetails_Info: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_INFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Lobby ID  */
    public let LobbyId: String?

    /** The Product User ID of the current owner of the lobby  */
    public let LobbyOwnerUserId: EOS_ProductUserId?

    /** Permission level of the lobby  */
    public let PermissionLevel: EOS_ELobbyPermissionLevel

    /** Current available space  */
    public let AvailableSlots: Int

    /** Max allowed members in the lobby  */
    public let MaxMembers: Int

    /** If true, users can invite others to this lobby  */
    public let bAllowInvites: Bool

    /** The main indexed parameter for this lobby, can be any string (ie "Region:GameMode")  */
    public let BucketId: String?

    /** Is host migration allowed  */
    public let bAllowHostMigration: Bool

    /** Was a Real-Time Communication (RTC) room enabled at lobby creation?  */
    public let bRTCRoomEnabled: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_Info {
        try _tagEOS_LobbyDetails_Info(
            ApiVersion: ApiVersion,
            LobbyId: pointerManager.managedMutablePointerToBuffer(copyingArray: LobbyId?.utf8CString),
            LobbyOwnerUserId: LobbyOwnerUserId,
            PermissionLevel: PermissionLevel,
            AvailableSlots: try safeNumericCast(exactly: AvailableSlots),
            MaxMembers: try safeNumericCast(exactly: MaxMembers),
            bAllowInvites: eosBoolFromSwiftBool(bAllowInvites),
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString),
            bAllowHostMigration: eosBoolFromSwiftBool(bAllowHostMigration),
            bRTCRoomEnabled: eosBoolFromSwiftBool(bRTCRoomEnabled)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_Info?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyId = String(cString: sdkObject.LobbyId)
        self.LobbyOwnerUserId = sdkObject.LobbyOwnerUserId
        self.PermissionLevel = sdkObject.PermissionLevel
        self.AvailableSlots = try safeNumericCast(exactly: sdkObject.AvailableSlots)
        self.MaxMembers = try safeNumericCast(exactly: sdkObject.MaxMembers)
        self.bAllowInvites = try swiftBoolFromEosBool(sdkObject.bAllowInvites)
        self.BucketId = String(cString: sdkObject.BucketId)
        self.bAllowHostMigration = try swiftBoolFromEosBool(sdkObject.bAllowHostMigration)
        self.bRTCRoomEnabled = try swiftBoolFromEosBool(sdkObject.bRTCRoomEnabled)
    }
}
