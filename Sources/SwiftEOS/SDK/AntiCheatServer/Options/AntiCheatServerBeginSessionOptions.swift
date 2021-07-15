import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatServer_BeginSessionOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Time in seconds to allow newly registered clients to complete anti-cheat authentication.
    Recommended value: 60
    */
    public let RegisterTimeoutSeconds: Int

    /** Optional name of this game server */
    public let ServerName: String?

    /**
    Gameplay data collection APIs such as LogPlayerTick will be enabled if set to true.
    If you do not use these APIs, it is more efficient to set this value to false.
    */
    public let bEnableGameplayData: Bool

    /** The Product User ID of the local user who is associated with this session. Dedicated servers should set this to null. */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_BeginSessionOptions {
        try _tagEOS_AntiCheatServer_BeginSessionOptions(
            ApiVersion: ApiVersion,
            RegisterTimeoutSeconds: try safeNumericCast(exactly: RegisterTimeoutSeconds),
            ServerName: pointerManager.managedPointerToBuffer(copyingArray: ServerName?.utf8CString),
            bEnableGameplayData: eosBoolFromSwiftBool(bEnableGameplayData),
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_BeginSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RegisterTimeoutSeconds = try safeNumericCast(exactly: sdkObject.RegisterTimeoutSeconds)
        self.ServerName = stringFromOptionalCStringPointer(sdkObject.ServerName)
        self.bEnableGameplayData = try swiftBoolFromEosBool(sdkObject.bEnableGameplayData)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST`.
    - Parameter RegisterTimeoutSeconds: Time in seconds to allow newly registered clients to complete anti-cheat authentication.
    Recommended value: 60
    - Parameter ServerName: Optional name of this game server
    - Parameter bEnableGameplayData: Gameplay data collection APIs such as LogPlayerTick will be enabled if set to true.
    If you do not use these APIs, it is more efficient to set this value to false.
    - Parameter LocalUserId: The Product User ID of the local user who is associated with this session. Dedicated servers should set this to null.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST,
        RegisterTimeoutSeconds: Int,
        ServerName: String?,
        bEnableGameplayData: Bool,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.RegisterTimeoutSeconds = RegisterTimeoutSeconds
        self.ServerName = ServerName
        self.bEnableGameplayData = bEnableGameplayData
        self.LocalUserId = LocalUserId
    }
}
