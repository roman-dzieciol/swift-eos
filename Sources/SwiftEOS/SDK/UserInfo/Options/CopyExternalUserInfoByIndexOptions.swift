import Foundation
import EOSSDK

/** Input parameters for the EOS_UserInfo_CopyExternalUserInfoByIndex function. */
public struct SwiftEOS_UserInfo_CopyExternalUserInfoByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local player requesting the information */
    public let LocalUserId: EOS_EpicAccountId?

    /** The Epic Online Services Account ID of the player whose information is being retrieved */
    public let TargetUserId: EOS_EpicAccountId?

    /** Index of the external user info to retrieve from the cache */
    public let Index: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions {
        try _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TargetUserId: TargetUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TargetUserId = sdkObject.TargetUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local player requesting the information
    - Parameter TargetUserId: The Epic Online Services Account ID of the player whose information is being retrieved
    - Parameter Index: Index of the external user info to retrieve from the cache
    */
    public init(
        ApiVersion: Int32 = EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TargetUserId: EOS_EpicAccountId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TargetUserId = TargetUserId
        self.Index = Index
    }
}
