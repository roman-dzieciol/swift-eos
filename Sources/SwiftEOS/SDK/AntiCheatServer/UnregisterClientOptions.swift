import Foundation
import EOSSDK
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
