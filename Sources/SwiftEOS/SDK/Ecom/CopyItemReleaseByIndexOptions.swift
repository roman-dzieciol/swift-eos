import Foundation
import EOSSDK

/** Input parameters for the EOS_Ecom_CopyItemReleaseByIndex function. */
public struct SwiftEOS_Ecom_CopyItemReleaseByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYITEMRELEASEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item release is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the item to get the releases for.  */
    public let ItemId: String?

    /** The index of the release to get.  */
    public let ReleaseIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyItemReleaseByIndexOptions {
        try _tagEOS_Ecom_CopyItemReleaseByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: ItemId?.utf8CString),
            ReleaseIndex: try safeNumericCast(exactly: ReleaseIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyItemReleaseByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemId = String(cString: sdkObject.ItemId)
        self.ReleaseIndex = try safeNumericCast(exactly: sdkObject.ReleaseIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYITEMRELEASEBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?,
        ReleaseIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ItemId = ItemId
        self.ReleaseIndex = ReleaseIndex
    }
}
