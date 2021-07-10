import Foundation
import EOSSDK

/** Common settings associated with a single session */
public struct SwiftEOS_SessionDetails_Settings: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The main indexed parameter for this session, can be any string (ie "Region:GameMode") */
    public let BucketId: String?

    /** Number of total players allowed in the session */
    public let NumPublicConnections: Int

    /** Are players allowed to join the session while it is in the "in progress" state */
    public let bAllowJoinInProgress: Bool

    /** Permission level describing allowed access to the session when joining or searching for the session */
    public let PermissionLevel: EOS_EOnlineSessionPermissionLevel

    /** Are players allowed to send invites for the session */
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
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONDETAILS_SETTINGS_API_LATEST`.
    - Parameter BucketId: The main indexed parameter for this session, can be any string (ie "Region:GameMode")
    - Parameter NumPublicConnections: Number of total players allowed in the session
    - Parameter bAllowJoinInProgress: Are players allowed to join the session while it is in the "in progress" state
    - Parameter PermissionLevel: Permission level describing allowed access to the session when joining or searching for the session
    - Parameter bInvitesAllowed: Are players allowed to send invites for the session
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONDETAILS_SETTINGS_API_LATEST,
        BucketId: String?,
        NumPublicConnections: Int,
        bAllowJoinInProgress: Bool,
        PermissionLevel: EOS_EOnlineSessionPermissionLevel,
        bInvitesAllowed: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.BucketId = BucketId
        self.NumPublicConnections = NumPublicConnections
        self.bAllowJoinInProgress = bAllowJoinInProgress
        self.PermissionLevel = PermissionLevel
        self.bInvitesAllowed = bInvitesAllowed
    }
}
