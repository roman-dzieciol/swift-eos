import Foundation
import EOSSDK


/** Input parameters for the `EOS_LobbySearch_SetTargetUserId` function. */
public struct SwiftEOS_LobbySearch_SetTargetUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYSEARCH_SETTARGETUSERID_API_LATEST`. */
    public let ApiVersion: Int32

    /** Search lobbies for given user by Product User ID, returning any lobbies where this user is currently registered */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_SetTargetUserIdOptions {
        _tagEOS_LobbySearch_SetTargetUserIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_SetTargetUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYSEARCH_SETTARGETUSERID_API_LATEST`.
    - Parameter TargetUserId: Search lobbies for given user by Product User ID, returning any lobbies where this user is currently registered
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_SETTARGETUSERID_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
