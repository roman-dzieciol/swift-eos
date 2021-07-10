import Foundation
import EOSSDK
public struct SwiftEOS_LobbyDetails_Info: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYDETAILS_INFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** Lobby ID */
    public let LobbyId: String?

    /** The Product User ID of the current owner of the lobby */
    public let LobbyOwnerUserId: EOS_ProductUserId?

    /** Permission level of the lobby */
    public let PermissionLevel: EOS_ELobbyPermissionLevel

    /** Current available space */
    public let AvailableSlots: Int

    /** Max allowed members in the lobby */
    public let MaxMembers: Int

    /** If true, users can invite others to this lobby */
    public let bAllowInvites: Bool

    /** The main indexed parameter for this lobby, can be any string (ie "Region:GameMode") */
    public let BucketId: String?

    /** Is host migration allowed */
    public let bAllowHostMigration: Bool

    /** Was a Real-Time Communication (RTC) room enabled at lobby creation? */
    public let bRTCRoomEnabled: Bool

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYDETAILS_INFO_API_LATEST`.
    - Parameter LobbyId: Lobby ID
    - Parameter LobbyOwnerUserId: The Product User ID of the current owner of the lobby
    - Parameter PermissionLevel: Permission level of the lobby
    - Parameter AvailableSlots: Current available space
    - Parameter MaxMembers: Max allowed members in the lobby
    - Parameter bAllowInvites: If true, users can invite others to this lobby
    - Parameter BucketId: The main indexed parameter for this lobby, can be any string (ie "Region:GameMode")
    - Parameter bAllowHostMigration: Is host migration allowed
    - Parameter bRTCRoomEnabled: Was a Real-Time Communication (RTC) room enabled at lobby creation?
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_INFO_API_LATEST,
        LobbyId: String?,
        LobbyOwnerUserId: EOS_ProductUserId?,
        PermissionLevel: EOS_ELobbyPermissionLevel,
        AvailableSlots: Int,
        MaxMembers: Int,
        bAllowInvites: Bool,
        BucketId: String?,
        bAllowHostMigration: Bool,
        bRTCRoomEnabled: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyId = LobbyId
        self.LobbyOwnerUserId = LobbyOwnerUserId
        self.PermissionLevel = PermissionLevel
        self.AvailableSlots = AvailableSlots
        self.MaxMembers = MaxMembers
        self.bAllowInvites = bAllowInvites
        self.BucketId = BucketId
        self.bAllowHostMigration = bAllowHostMigration
        self.bRTCRoomEnabled = bRTCRoomEnabled
    }
}
