import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_UnregisterPeerOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST. */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user, as previously passed to EOS_AntiCheatClient_RegisterPeer */
    public let PeerHandle: EOS_AntiCheatCommon_ClientHandle

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST.
    - Parameter PeerHandle: Locally unique value describing the remote user, as previously passed to EOS_AntiCheatClient_RegisterPeer
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST,
        PeerHandle: EOS_AntiCheatCommon_ClientHandle
    ) {
        self.ApiVersion = ApiVersion
        self.PeerHandle = PeerHandle
    }
}
