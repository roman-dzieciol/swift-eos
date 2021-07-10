import Foundation
import EOSSDK

/** Input data for the EOS_TitleStorage_DeleteCache function */
public struct SwiftEOS_PlayerDataStorage_DeleteCacheOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST. */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is deleting his cache */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_DeleteCacheOptions {
        _tagEOS_PlayerDataStorage_DeleteCacheOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DeleteCacheOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST.
    - Parameter LocalUserId: Product User ID of the local user who is deleting his cache
    */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
