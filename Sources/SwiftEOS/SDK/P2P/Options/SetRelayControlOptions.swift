import Foundation
import EOSSDK

/** Structure containing information about new relay configurations. */
public struct SwiftEOS_P2P_SetRelayControlOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SETRELAYCONTROL_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The requested level of relay servers for P2P connections. This setting is only applied to new P2P connections, or when existing P2P connections
     * reconnect during a temporary connectivity outage. Peers with an incompatible setting to the local setting will not be able to connnect.
     */
    public let RelayControl: EOS_ERelayControl

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SetRelayControlOptions {
        _tagEOS_P2P_SetRelayControlOptions(
            ApiVersion: ApiVersion,
            RelayControl: RelayControl
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SetRelayControlOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RelayControl = sdkObject.RelayControl
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_P2P_SETRELAYCONTROL_API_LATEST. 
     * - Parameter RelayControl:  The requested level of relay servers for P2P connections. This setting is only applied to new P2P connections, or when existing P2P connections
     * reconnect during a temporary connectivity outage. Peers with an incompatible setting to the local setting will not be able to connnect.
     */
    public init(
        ApiVersion: Int32 = EOS_P2P_SETRELAYCONTROL_API_LATEST,
        RelayControl: EOS_ERelayControl
    ) {
        self.ApiVersion = ApiVersion
        self.RelayControl = RelayControl
    }
}
