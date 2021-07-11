import Foundation
import EOSSDK

/** Structure containing information about who would like connection notifications, and about which socket. */
public struct SwiftEOS_P2P_AddNotifyPeerConnectionRequestOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_P2P_ADDNOTIFYPEERCONNECTIONREQUEST_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the user who is listening for incoming connection requests */
    public let LocalUserId: EOS_ProductUserId?

    /** The optional socket ID to listen for, used as a filter for incoming connection requests; If NULL, incoming connection requests will not be filtered */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions {
        try _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AddNotifyPeerConnectionRequestOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_ADDNOTIFYPEERCONNECTIONREQUEST_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the user who is listening for incoming connection requests
    - Parameter SocketId: The optional socket ID to listen for, used as a filter for incoming connection requests; If NULL, incoming connection requests will not be filtered
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_ADDNOTIFYPEERCONNECTIONREQUEST_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SocketId = SocketId
    }
}
