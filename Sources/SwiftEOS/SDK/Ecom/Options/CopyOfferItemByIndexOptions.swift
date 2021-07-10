import Foundation
import EOSSDK

/** Input parameters for the `EOS_Ecom_CopyOfferItemByIndex` function. */
public struct SwiftEOS_Ecom_CopyOfferItemByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item is being copied */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get the items for. */
    public let OfferId: String?

    /** The index of the item to get. */
    public let ItemIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyOfferItemByIndexOptions {
        try _tagEOS_Ecom_CopyOfferItemByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString),
            ItemIndex: try safeNumericCast(exactly: ItemIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyOfferItemByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
        self.ItemIndex = try safeNumericCast(exactly: sdkObject.ItemIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item is being copied
    - Parameter OfferId: The ID of the offer to get the items for.
    - Parameter ItemIndex: The index of the item to get.
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?,
        ItemIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
        self.ItemIndex = ItemIndex
    }
}
