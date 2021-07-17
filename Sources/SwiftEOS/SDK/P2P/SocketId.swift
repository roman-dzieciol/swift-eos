import Foundation
import EOSSDK


/**
P2P Socket ID

The Socket ID contains an application-defined name for the connection between a local person and another peer.

When a remote user receives a connection request from you, they will receive this information.  It can be important
to only accept connections with a known socket-name and/or from a known user, to prevent leaking of private
information, such as a user's IP address. Using the socket name as a secret key can help prevent such leaks. Shared
private data, like a private match's Session ID are good candidates for a socket name.
*/
public struct SwiftEOS_P2P_SocketId: SwiftEOSObject {

    /** API Version: Set this to `EOS_P2P_SOCKETID_API_LATEST`. */
    public let ApiVersion: Int32

    /** A name for the connection. Must be a NULL-terminated string of between 1-32 alpha-numeric characters (A-Z, a-z, 0-9) */
    public let SocketName: String_33

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SocketId?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SocketName = String_33(tuple: sdkObject.SocketName)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SocketId {
        _tagEOS_P2P_SocketId(
            ApiVersion: ApiVersion,
            SocketName: SocketName.tuple()
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_P2P_SOCKETID_API_LATEST`.
    - Parameter SocketName: A name for the connection. Must be a NULL-terminated string of between 1-32 alpha-numeric characters (A-Z, a-z, 0-9)
    */
    public init(
        ApiVersion: Int32 = EOS_P2P_SOCKETID_API_LATEST,
        SocketName: String_33
    ) {
        self.ApiVersion = ApiVersion
        self.SocketName = SocketName
    }
}
