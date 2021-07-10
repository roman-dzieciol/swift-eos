import Foundation
import EOSSDK

/** Structure containing information about what version of the `EOS_P2P_AddNotifyIncomingPacketQueueFull` function is supported. */
public struct SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions {
        _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AddNotifyIncomingPacketQueueFullOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
