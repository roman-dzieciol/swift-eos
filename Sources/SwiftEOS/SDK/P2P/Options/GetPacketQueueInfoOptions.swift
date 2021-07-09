import Foundation
import EOSSDK

/** Structure containing information needed to get the current packet queue information. */
public struct SwiftEOS_P2P_GetPacketQueueInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_GETPACKETQUEUEINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_GetPacketQueueInfoOptions {
        _tagEOS_P2P_GetPacketQueueInfoOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_GetPacketQueueInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_P2P_GETPACKETQUEUEINFO_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
