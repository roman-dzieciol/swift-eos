import Foundation
import EOSSDK


/** Input parameters for the `EOS_LobbyDetails_GetMemberAttributeCount` function. */
public struct SwiftEOS_LobbyDetails_GetMemberAttributeCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYDETAILS_GETMEMBERATTRIBUTECOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the lobby member */
    public let TargetUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_GetMemberAttributeCountOptions {
        _tagEOS_LobbyDetails_GetMemberAttributeCountOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_GetMemberAttributeCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYDETAILS_GETMEMBERATTRIBUTECOUNT_API_LATEST`.
    - Parameter TargetUserId: The Product User ID of the lobby member
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_GETMEMBERATTRIBUTECOUNT_API_LATEST,
        TargetUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
    }
}
