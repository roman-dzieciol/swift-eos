import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_ADDNOTIFYCLIENTACTIONREQUIRED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions {
        _tagEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_ADDNOTIFYCLIENTACTIONREQUIRED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_ADDNOTIFYCLIENTAUTHSTATUSCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions {
        _tagEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_ADDNOTIFYCLIENTAUTHSTATUSCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatServer_AddNotifyMessageToClientOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions {
        _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatServer_BeginSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * 
     * Time in seconds to allow newly registered clients to complete anti-cheat authentication.
     * Recommended value: 60
     */
    public let RegisterTimeoutSeconds: Int

    /** Optional name of this game server  */
    public let ServerName: String?

    /**
     * 
     * Gameplay data collection APIs such as LogPlayerTick will be enabled if set to true.
     * If you do not use these APIs, it is more efficient to set this value to false.
     */
    public let bEnableGameplayData: Bool

    /** The Product User ID of the local user who is associated with this session. Dedicated servers should set this to null.  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
        self.ServerName = String(cString: sdkObject.ServerName)
        self.bEnableGameplayData = try swiftBoolFromEosBool(sdkObject.bEnableGameplayData)
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
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
public struct SwiftEOS_AntiCheatServer_EndSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_ENDSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_EndSessionOptions {
        _tagEOS_AntiCheatServer_EndSessionOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_EndSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_ENDSESSION_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST.  */
    public let ApiVersion: Int32

    /** Length in bytes of input  */
    public let DataLengthBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions {
        try _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST,
        DataLengthBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
    }
}
public struct SwiftEOS_AntiCheatServer_ProtectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_PROTECTMESSAGE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user to whom the message will be sent  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Length in bytes of input 
     * - array buffer: Data
     */
    public let DataLengthBytes: Int

    /**
     * The data to encrypt 
     * - array num: DataLengthBytes
     */
    public let Data: [UInt8]?

    /** The size in bytes of OutBuffer  */
    public let OutBufferSizeBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_ProtectMessageOptions {
        try _tagEOS_AntiCheatServer_ProtectMessageOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            OutBufferSizeBytes: try safeNumericCast(exactly: OutBufferSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_ProtectMessageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_PROTECTMESSAGE_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
public struct SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_RECEIVEMESSAGEFROMCLIENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Optional value, if non-null then only messages addressed to this specific client will be returned  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * The size of the data received 
     * - array buffer: Data
     */
    public let DataLengthBytes: Int

    /**
     * The data received 
     * - array num: DataLengthBytes
     */
    public let Data: [UInt8]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions {
        try _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_RECEIVEMESSAGEFROMCLIENT_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        DataLengthBytes: Int,
        Data: [UInt8]?
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
    }
}
public struct SwiftEOS_AntiCheatServer_RegisterClientOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_REGISTERCLIENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user (e.g. a player object pointer)  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** Type of remote user being registered  */
    public let ClientType: EOS_EAntiCheatCommonClientType

    /** Remote user's platform, if known  */
    public let ClientPlatform: EOS_EAntiCheatCommonClientPlatform

    /** Account identifier for the remote user  */
    public let AccountId: String?

    /**
     * 
     * Optional IP address for the remote user. May be null if not available.
     * IPv4 format: "0.0.0.0"
     * IPv6 format: "0:0:0:0:0:0:0:0"
     */
    public let IpAddress: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_RegisterClientOptions {
        _tagEOS_AntiCheatServer_RegisterClientOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            ClientType: ClientType,
            ClientPlatform: ClientPlatform,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString),
            IpAddress: pointerManager.managedPointerToBuffer(copyingArray: IpAddress?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_RegisterClientOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientType = sdkObject.ClientType
        self.ClientPlatform = sdkObject.ClientPlatform
        self.AccountId = String(cString: sdkObject.AccountId)
        self.IpAddress = String(cString: sdkObject.IpAddress)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_REGISTERCLIENT_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientType: EOS_EAntiCheatCommonClientType,
        ClientPlatform: EOS_EAntiCheatCommonClientPlatform,
        AccountId: String?,
        IpAddress: String?
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.ClientType = ClientType
        self.ClientPlatform = ClientPlatform
        self.AccountId = AccountId
        self.IpAddress = IpAddress
    }
}
public struct SwiftEOS_AntiCheatServer_SetClientNetworkStateOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_SETCLIENTNETWORKSTATE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user (e.g. a player object pointer)  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** True if the network is functioning normally, false if temporarily interrupted  */
    public let bIsNetworkActive: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_SetClientNetworkStateOptions {
        _tagEOS_AntiCheatServer_SetClientNetworkStateOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            bIsNetworkActive: eosBoolFromSwiftBool(bIsNetworkActive)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_SetClientNetworkStateOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.bIsNetworkActive = try swiftBoolFromEosBool(sdkObject.bIsNetworkActive)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_SETCLIENTNETWORKSTATE_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        bIsNetworkActive: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.bIsNetworkActive = bIsNetworkActive
    }
}
public struct SwiftEOS_AntiCheatServer_UnprotectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user from whom the message was received  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Length in bytes of input 
     * - array buffer: Data
     */
    public let DataLengthBytes: Int

    /**
     * The data to decrypt 
     * - array num: DataLengthBytes
     */
    public let Data: [UInt8]?

    /** The size in bytes of OutBuffer  */
    public let OutBufferSizeBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_UnprotectMessageOptions {
        try _tagEOS_AntiCheatServer_UnprotectMessageOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            OutBufferSizeBytes: try safeNumericCast(exactly: OutBufferSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_UnprotectMessageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
public struct SwiftEOS_AntiCheatServer_UnregisterClientOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_UNREGISTERCLIENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user, as previously passed to RegisterClient  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_UnregisterClientOptions {
        _tagEOS_AntiCheatServer_UnregisterClientOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_UnregisterClientOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_UNREGISTERCLIENT_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
    }
}
