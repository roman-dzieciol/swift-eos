import Foundation
import EOSSDK

/** Structure containing information about who would like notifications about closed connections, and for which socket. */
public struct SwiftEOS_P2P_AddNotifyPeerConnectionClosedOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_P2P_ADDNOTIFYPEERCONNECTIONCLOSED_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who would like notifications */
    public let LocalUserId: EOS_ProductUserId?

    /** The optional socket ID to listen for to be closed. If NULL, this handler will be called for all closed connections */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AddNotifyPeerConnectionClosedOptions {
        try _tagEOS_P2P_AddNotifyPeerConnectionClosedOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AddNotifyPeerConnectionClosedOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_ADDNOTIFYPEERCONNECTIONCLOSED_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user who would like notifications
    - Parameter SocketId: The optional socket ID to listen for to be closed. If NULL, this handler will be called for all closed connections
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_ADDNOTIFYPEERCONNECTIONCLOSED_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SocketId = SocketId
    }
}
