import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_QueryInvites function. */
public struct SwiftEOS_Lobby_QueryInvitesOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_QUERYINVITES_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user whose invitations you want to retrieve */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_QueryInvitesOptions {
        _tagEOS_Lobby_QueryInvitesOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_QueryInvitesOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBY_QUERYINVITES_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the local user whose invitations you want to retrieve
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_QUERYINVITES_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
