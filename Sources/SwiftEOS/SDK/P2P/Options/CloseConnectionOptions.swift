import Foundation
import EOSSDK


/** Structure containing information about who would like to close a connection, and which connection. */
public struct SwiftEOS_P2P_CloseConnectionOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_P2P_CLOSECONNECTION_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who would like to close a previously accepted connection (or decline a pending invite) */
    public let LocalUserId: EOS_ProductUserId?

    /** The Product User ID of the remote user to disconnect from (or to reject a pending invite from) */
    public let RemoteUserId: EOS_ProductUserId?

    /** The socket ID of the connection to close (or optionally NULL to not accept any connection requests from the Remote User) */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_CloseConnectionOptions {
        try _tagEOS_P2P_CloseConnectionOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            RemoteUserId: RemoteUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_CloseConnectionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.RemoteUserId = sdkObject.RemoteUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_CLOSECONNECTION_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user who would like to close a previously accepted connection (or decline a pending invite)
    - Parameter RemoteUserId: The Product User ID of the remote user to disconnect from (or to reject a pending invite from)
    - Parameter SocketId: The socket ID of the connection to close (or optionally NULL to not accept any connection requests from the Remote User)
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_CLOSECONNECTION_API_LATEST,
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
