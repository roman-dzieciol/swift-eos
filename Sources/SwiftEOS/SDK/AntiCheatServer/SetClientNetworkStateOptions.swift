import Foundation
import EOSSDK
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
