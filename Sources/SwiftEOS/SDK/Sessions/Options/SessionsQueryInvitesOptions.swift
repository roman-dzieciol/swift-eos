import Foundation
import EOSSDK

/** Input parameters for the `EOS_Sessions_QueryInvites` function. */
public struct SwiftEOS_Sessions_QueryInvitesOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_SESSIONS_QUERYINVITES_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID to query for invitations */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_QueryInvitesOptions {
        _tagEOS_Sessions_QueryInvitesOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_QueryInvitesOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_SESSIONS_QUERYINVITES_API_LATEST`.
    - Parameter LocalUserId: The Product User ID to query for invitations
    */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_QUERYINVITES_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
