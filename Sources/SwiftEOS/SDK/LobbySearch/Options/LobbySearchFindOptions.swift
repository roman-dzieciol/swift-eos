import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbySearch_Find function. */
public struct SwiftEOS_LobbySearch_FindOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYSEARCH_FIND_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID of the user making the search request */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_FindOptions {
        _tagEOS_LobbySearch_FindOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_FindOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBYSEARCH_FIND_API_LATEST.
    - Parameter LocalUserId: The Product User ID of the user making the search request
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_FIND_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
