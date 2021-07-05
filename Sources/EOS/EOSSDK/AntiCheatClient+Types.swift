import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ADDEXTERNALINTEGRITYCATALOG_API_LATEST.  */
    public let ApiVersion: Int32

    /** UTF-8 path to the .bin catalog file to add  */
    public let PathToBinFile: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions {
        _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions(
            ApiVersion: ApiVersion,
            PathToBinFile: pointerManager.managedPointerToBuffer(copyingArray: PathToBinFile?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PathToBinFile = String(cString: sdkObject.PathToBinFile)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDEXTERNALINTEGRITYCATALOG_API_LATEST,
        PathToBinFile: String?
    ) {
        self.ApiVersion = ApiVersion
        self.PathToBinFile = PathToBinFile
    }
}
public struct SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOPEER_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions {
        _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOPEER_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatClient_AddNotifyMessageToServerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOSERVER_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions {
        _tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOSERVER_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ADDNOTIFYPEERACTIONREQUIRED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions {
        _tagEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDNOTIFYPEERACTIONREQUIRED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ADDNOTIFYPEERAUTHSTATUSCHANGED_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions {
        _tagEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDNOTIFYPEERAUTHSTATUSCHANGED_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatClient_BeginSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_BEGINSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Logged in user identifier from earlier call to EOS_Connect_Login family of functions  */
    public let LocalUserId: EOS_ProductUserId?

    /** Operating mode  */
    public let Mode: EOS_EAntiCheatClientMode

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_BeginSessionOptions {
        _tagEOS_AntiCheatClient_BeginSessionOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mode: Mode
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_BeginSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mode = sdkObject.Mode
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_BEGINSESSION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Mode: EOS_EAntiCheatClientMode
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mode = Mode
    }
}
public struct SwiftEOS_AntiCheatClient_EndSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ENDSESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_EndSessionOptions {
        _tagEOS_AntiCheatClient_EndSessionOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_EndSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ENDSESSION_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
public struct SwiftEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST.  */
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
    ) throws -> _tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions {
        try _tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_GetProtectMessageOutputLengthOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST,
        DataLengthBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
    }
}

/** Structure containing details about a new message that must be dispatched to the game server. */
public struct SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo {

    /**
     * The message data that must be sent to the server 
     * - array num: MessageDataSizeBytes
     */
    public let MessageData: [UInt8]?

    /**
     * The size in bytes of MessageData 
     * - array buffer: MessageData
     */
    public let MessageDataSizeBytes: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.MessageData = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.MessageData,
                count: try safeNumericCast(exactly: sdkObject.MessageDataSizeBytes)
            ))
        self.MessageDataSizeBytes = try safeNumericCast(exactly: sdkObject.MessageDataSizeBytes)
    }

    /** Send notification using the pointer to C callback info provided */
    public static func sendNotification(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__NotificationCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.notify(callbackInfo)
    }
}
public struct SwiftEOS_AntiCheatClient_PollStatusOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_POLLSTATUS_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The size of OutMessage in bytes. Recommended size is 256 bytes. 
     * - array buffer: OutMessage
     */
    public let OutMessageLength: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_PollStatusOptions {
        try _tagEOS_AntiCheatClient_PollStatusOptions(
            ApiVersion: ApiVersion,
            OutMessageLength: try safeNumericCast(exactly: OutMessageLength)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_PollStatusOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.OutMessageLength = try safeNumericCast(exactly: sdkObject.OutMessageLength)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_POLLSTATUS_API_LATEST,
        OutMessageLength: Int
    ) {
        self.ApiVersion = ApiVersion
        self.OutMessageLength = OutMessageLength
    }
}
public struct SwiftEOS_AntiCheatClient_ProtectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_PROTECTMESSAGE_API_LATEST.  */
    public let ApiVersion: Int32

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
    ) throws -> _tagEOS_AntiCheatClient_ProtectMessageOptions {
        try _tagEOS_AntiCheatClient_ProtectMessageOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            OutBufferSizeBytes: try safeNumericCast(exactly: OutBufferSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_ProtectMessageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_PROTECTMESSAGE_API_LATEST,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
public struct SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMPEER_API_LATEST.  */
    public let ApiVersion: Int32

    /** The handle describing the sender of this message  */
    public let PeerHandle: EOS_AntiCheatCommon_ClientHandle

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
    ) throws -> _tagEOS_AntiCheatClient_ReceiveMessageFromPeerOptions {
        try _tagEOS_AntiCheatClient_ReceiveMessageFromPeerOptions(
            ApiVersion: ApiVersion,
            PeerHandle: PeerHandle,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_ReceiveMessageFromPeerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PeerHandle = sdkObject.PeerHandle
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMPEER_API_LATEST,
        PeerHandle: EOS_AntiCheatCommon_ClientHandle,
        DataLengthBytes: Int,
        Data: [UInt8]?
    ) {
        self.ApiVersion = ApiVersion
        self.PeerHandle = PeerHandle
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
    }
}
public struct SwiftEOS_AntiCheatClient_ReceiveMessageFromServerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMSERVER_API_LATEST.  */
    public let ApiVersion: Int32

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
    ) throws -> _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions {
        try _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMSERVER_API_LATEST,
        DataLengthBytes: Int,
        Data: [UInt8]?
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
    }
}
public struct SwiftEOS_AntiCheatClient_RegisterPeerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_REGISTERPEER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user (e.g. a player object pointer)  */
    public let PeerHandle: EOS_AntiCheatCommon_ClientHandle

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
    ) throws -> _tagEOS_AntiCheatClient_RegisterPeerOptions {
        _tagEOS_AntiCheatClient_RegisterPeerOptions(
            ApiVersion: ApiVersion,
            PeerHandle: PeerHandle,
            ClientType: ClientType,
            ClientPlatform: ClientPlatform,
            AccountId: pointerManager.managedPointerToBuffer(copyingArray: AccountId?.utf8CString),
            IpAddress: pointerManager.managedPointerToBuffer(copyingArray: IpAddress?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_RegisterPeerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PeerHandle = sdkObject.PeerHandle
        self.ClientType = sdkObject.ClientType
        self.ClientPlatform = sdkObject.ClientPlatform
        self.AccountId = String(cString: sdkObject.AccountId)
        self.IpAddress = String(cString: sdkObject.IpAddress)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_REGISTERPEER_API_LATEST,
        PeerHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientType: EOS_EAntiCheatCommonClientType,
        ClientPlatform: EOS_EAntiCheatCommonClientPlatform,
        AccountId: String?,
        IpAddress: String?
    ) {
        self.ApiVersion = ApiVersion
        self.PeerHandle = PeerHandle
        self.ClientType = ClientType
        self.ClientPlatform = ClientPlatform
        self.AccountId = AccountId
        self.IpAddress = IpAddress
    }
}
public struct SwiftEOS_AntiCheatClient_UnprotectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST.  */
    public let ApiVersion: Int32

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
    ) throws -> _tagEOS_AntiCheatClient_UnprotectMessageOptions {
        try _tagEOS_AntiCheatClient_UnprotectMessageOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            OutBufferSizeBytes: try safeNumericCast(exactly: OutBufferSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_UnprotectMessageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
public struct SwiftEOS_AntiCheatClient_UnregisterPeerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user, as previously passed to EOS_AntiCheatClient_RegisterPeer  */
    public let PeerHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_UnregisterPeerOptions {
        _tagEOS_AntiCheatClient_UnregisterPeerOptions(
            ApiVersion: ApiVersion,
            PeerHandle: PeerHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_UnregisterPeerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PeerHandle = sdkObject.PeerHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST,
        PeerHandle: EOS_AntiCheatCommon_ClientHandle
    ) {
        self.ApiVersion = ApiVersion
        self.PeerHandle = PeerHandle
    }
}
