import Foundation
import EOSSDK


/** Structure containing information about who would like to accept a connection, and which connection. */
public struct SwiftEOS_P2P_AcceptConnectionOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_P2P_ACCEPTCONNECTION_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is accepting any pending or future connections with RemoteUserId */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user who has either sent a connection request or is expected to in the future */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID of the connection to accept on */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_AcceptConnectionOptions {
        try _tagEOS_P2P_AcceptConnectionOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RemoteUserId: RemoteUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_AcceptConnectionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_ACCEPTCONNECTION_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user who is accepting any pending or future connections with RemoteUserId
    - Parameter RemoteUserId: The Product User ID of the remote user who has either sent a connection request or is expected to in the future
    - Parameter SocketId: The socket ID of the connection to accept on
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_ACCEPTCONNECTION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        RemoteUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.RemoteUserId = RemoteUserId
        self.SocketId = SocketId
    }
}
