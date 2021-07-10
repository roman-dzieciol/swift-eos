import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_RegisterPeerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_REGISTERPEER_API_LATEST. */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user (e.g. a player object pointer) */
    public let PeerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Type of remote user being registered */
    public let ClientType: EOS_EAntiCheatCommonClientType

    /** Remote user's platform, if known */
    public let ClientPlatform: EOS_EAntiCheatCommonClientPlatform

    /**
    Identifier for the remote user. This is typically a string representation of an account ID, but it can be any string which is both unique (two different users will never have the same string) and consistent (if the same user connects to this game session twice, the same string will be used) in the scope of a single protected game session.
    */
    public let AccountId: String?

    /**
    Optional IP address for the remote user. May be null if not available.IPv4 format: "0.0.0.0"IPv6 format: "0:0:0:0:0:0:0:0"
    */
    public let IpAddress: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATCLIENT_REGISTERPEER_API_LATEST.
    - Parameter PeerHandle: Locally unique value describing the remote user (e.g. a player object pointer)
    - Parameter ClientType: Type of remote user being registered
    - Parameter ClientPlatform: Remote user's platform, if known
    - Parameter AccountId: Identifier for the remote user. This is typically a string representation of an account ID, but it can be any string which is both unique (two different users will never have the same string) and consistent (if the same user connects to this game session twice, the same string will be used) in the scope of a single protected game session.
    - Parameter IpAddress: Optional IP address for the remote user. May be null if not available.IPv4 format: "0.0.0.0"IPv6 format: "0:0:0:0:0:0:0:0"
    */
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
