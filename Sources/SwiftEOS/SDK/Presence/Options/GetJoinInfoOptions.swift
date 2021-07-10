import Foundation
import EOSSDK

/** Data for the `EOS_Presence_GetJoinInfo` function. */
public struct SwiftEOS_Presence_GetJoinInfoOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PRESENCE_GETJOININFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** The local user's Epic Online Services Account ID */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID to query for join info; this value must either be a logged-in local user, or a friend of that user */
    public let TargetUserId: EOS_EpicAccountId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Presence_GetJoinInfoOptions {
        _tagEOS_Presence_GetJoinInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Presence_GetJoinInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PRESENCE_GETJOININFO_API_LATEST`.
    - Parameter LocalUserId: The local user's Epic Online Services Account ID
    - Parameter TargetUserId: The Epic Online Services Account ID to query for join info; this value must either be a logged-in local user, or a friend of that user
    */
    public init(
        ApiVersion: Int32 = EOS_PRESENCE_GETJOININFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
    }
}
