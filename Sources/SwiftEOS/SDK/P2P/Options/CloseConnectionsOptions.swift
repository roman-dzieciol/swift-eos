import Foundation
import EOSSDK

/** Structure containing information about who would like to close connections, and by what socket ID */
public struct SwiftEOS_P2P_CloseConnectionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_CLOSECONNECTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who would like to close all connections that use a particular socket ID  */
    public let LocalUserId: EOS_ProductUserId?

    /** The socket ID of the connections to close  */
    public let SocketId: SwiftEOS_P2P_SocketId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_CloseConnectionsOptions {
        try _tagEOS_P2P_CloseConnectionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SocketId: try pointerManager.managedPointer(copyingValueOrNilPointer: SocketId?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_CloseConnectionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SocketId = try SwiftEOS_P2P_SocketId.init(sdkObject: sdkObject.SocketId.pointee)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_P2P_CLOSECONNECTIONS_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user who would like to close all connections that use a particular socket ID 
     * - Parameter SocketId:  The socket ID of the connections to close 
     */
    public init(
        ApiVersion: Int32 = EOS_P2P_CLOSECONNECTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SocketId: SwiftEOS_P2P_SocketId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SocketId = SocketId
    }
}
