import Foundation
import EOSSDK

/** Input parameters for the `EOS_Ecom_GetItemImageInfoCount` function. */
public struct SwiftEOS_Ecom_GetItemImageInfoCountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_GETITEMIMAGEINFOCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item image is being accessed */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the item to get the images for. */
    public let ItemId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetItemImageInfoCountOptions {
        _tagEOS_Ecom_GetItemImageInfoCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: ItemId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetItemImageInfoCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemId = String(cString: sdkObject.ItemId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_GETITEMIMAGEINFOCOUNT_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item image is being accessed
    - Parameter ItemId: The ID of the item to get the images for.
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETITEMIMAGEINFOCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ItemId = ItemId
    }
}
