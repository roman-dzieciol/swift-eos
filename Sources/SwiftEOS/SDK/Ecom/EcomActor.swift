import Foundation
import EOSSDK

public class SwiftEOS_Ecom_Actor: SwiftEOSActor {
    public let Handle: EOS_HEcom?

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HEcom?
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Initiates the purchase flow for a set of offers.  The callback is triggered after the purchase flow.
    On success, the set of entitlements that were unlocked will be cached.
    On success, a Transaction ID will be returned. The Transaction ID can be used to obtain an
    `EOS_Ecom_HTransaction` handle. The handle can then be used to retrieve the entitlements rewarded by the purchase.

    - SeeAlso: `EOS_Ecom_Transaction_Release`
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is making the purchase
    - Parameter OverrideCatalogNamespace: The catalog namespace will be the current Sandbox ID (in `EOS_Platform_Options`) unless overridden by this field
    - Parameter EntryCount: The number of `EOS_Ecom_CheckoutEntry` elements contained in Entries
    - Parameter Entries: An array of `EOS_Ecom_CheckoutEntry` elements, each containing the details of a single offer
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func Checkout(
        LocalUserId: EOS_EpicAccountId?,
        OverrideCatalogNamespace: String?,
        EntryCount: Int,
        Entries: SwiftEOS_Ecom_CheckoutEntry?,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_CheckoutCallbackInfo) -> Void
    ) throws {
        try ____Checkout(
            .init(
                LocalUserId: LocalUserId,
                OverrideCatalogNamespace: OverrideCatalogNamespace,
                EntryCount: EntryCount,
                Entries: Entries
            ),
            CompletionDelegate
        )
    }

    /**
    Fetches the entitlement with the given ID.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose entitlement is being copied
    - Parameter EntitlementId: ID of the entitlement to retrieve from the cache
    - SeeAlso: `EOS_Ecom_CopyEntitlementByNameAndIndex`
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given ID, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    public func CopyEntitlementById(
        LocalUserId: EOS_EpicAccountId?,
        EntitlementId: String?
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try ____CopyEntitlementById(.init(
                LocalUserId: LocalUserId,
                EntitlementId: EntitlementId
            ))
    }

    /**
    Fetches an entitlement from a given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose entitlement is being copied
    - Parameter EntitlementIndex: Index of the entitlement to retrieve from the cache
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given index, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    public func CopyEntitlementByIndex(
        LocalUserId: EOS_EpicAccountId?,
        EntitlementIndex: Int
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try ____CopyEntitlementByIndex(.init(
                LocalUserId: LocalUserId,
                EntitlementIndex: EntitlementIndex
            ))
    }

    /**
    Fetches a single entitlement with a given Entitlement Name.  The Index is used to access individual
    entitlements among those with the same Entitlement Name.  The Index can be a value from 0 to
    one less than the result from `EOS_Ecom_GetEntitlementsByNameCount`.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose entitlement is being copied
    - Parameter EntitlementName: Name of the entitlement to retrieve from the cache
    - Parameter Index: Index of the entitlement within the named set to retrieve from the cache.
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given name index pair, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    public func CopyEntitlementByNameAndIndex(
        LocalUserId: EOS_EpicAccountId?,
        EntitlementName: String?,
        Index: Int
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try ____CopyEntitlementByNameAndIndex(.init(
                LocalUserId: LocalUserId,
                EntitlementName: EntitlementName,
                Index: Index
            ))
    }

    /**
    Fetches an item with a given ID.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item is being copied
    - Parameter ItemId: The ID of the item to get.
    - SeeAlso: `EOS_Ecom_CatalogItem_Release`
    - SeeAlso: `EOS_Ecom_GetItemImageInfoCount`
    - SeeAlso: `EOS_Ecom_GetItemReleaseCount`
    - Throws: `EOS_Ecom_CatalogItemStale` if the item information is stale and passed out in OutItem
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the offer is not found
    - Returns: the item for the given index, if it exists and is valid, use `EOS_Ecom_CatalogItem_Release` when finished
    */
    public func CopyItemById(
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?
    ) throws -> SwiftEOS_Ecom_CatalogItem {
        try ____CopyItemById(.init(
                LocalUserId: LocalUserId,
                ItemId: ItemId
            ))
    }

    /**
    Fetches an image from a given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item image is being copied
    - Parameter ItemId: The ID of the item to get the images for.
    - Parameter ImageInfoIndex: The index of the image to get.
    - SeeAlso: `EOS_Ecom_KeyImageInfo_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogItemStale` if the associated item information is stale
              `EOS_NotFound` if the image is not found
    - Returns: the image for the given index, if it exists and is valid, use `EOS_Ecom_KeyImageInfo_Release` when finished
    */
    public func CopyItemImageInfoByIndex(
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?,
        ImageInfoIndex: Int
    ) throws -> SwiftEOS_Ecom_KeyImageInfo {
        try ____CopyItemImageInfoByIndex(.init(
                LocalUserId: LocalUserId,
                ItemId: ItemId,
                ImageInfoIndex: ImageInfoIndex
            ))
    }

    /**
    Fetches a release from a given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item release is being copied
    - Parameter ItemId: The ID of the item to get the releases for.
    - Parameter ReleaseIndex: The index of the release to get.
    - SeeAlso: `EOS_Ecom_CatalogRelease_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogItemStale` if the associated item information is stale
              `EOS_NotFound` if the release is not found
    - Returns: the release for the given index, if it exists and is valid, use `EOS_Ecom_CatalogRelease_Release` when finished
    */
    public func CopyItemReleaseByIndex(
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?,
        ReleaseIndex: Int
    ) throws -> SwiftEOS_Ecom_CatalogRelease {
        try ____CopyItemReleaseByIndex(.init(
                LocalUserId: LocalUserId,
                ItemId: ItemId,
                ReleaseIndex: ReleaseIndex
            ))
    }

    /**
    Fetches an offer with a given ID.  The pricing and text are localized to the provided account.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer is being copied
    - Parameter OfferId: The ID of the offer to get.
    - SeeAlso: `EOS_Ecom_CatalogOffer_Release`
    - SeeAlso: `EOS_Ecom_GetOfferItemCount`
    - Throws: `EOS_Ecom_CatalogOfferStale` if the offer information is stale and passed out in OutOffer
              `EOS_Ecom_CatalogOfferPriceInvalid` if the offer information has an invalid price and passed out in OutOffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the offer is not found
    - Returns: the offer for the given index, if it exists and is valid, use `EOS_Ecom_CatalogOffer_Release` when finished
    */
    public func CopyOfferById(
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) throws -> SwiftEOS_Ecom_CatalogOffer {
        try ____CopyOfferById(.init(
                LocalUserId: LocalUserId,
                OfferId: OfferId
            ))
    }

    /**
    Fetches an offer from a given index.  The pricing and text are localized to the provided account.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer is being copied
    - Parameter OfferIndex: The index of the offer to get.
    - SeeAlso: `EOS_Ecom_CatalogOffer_Release`
    - SeeAlso: `EOS_Ecom_GetOfferItemCount`
    - Throws: `EOS_Ecom_CatalogOfferStale` if the offer information is stale and passed out in OutOffer
              `EOS_Ecom_CatalogOfferPriceInvalid` if the offer information has an invalid price and passed out in OutOffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the offer is not found
    - Returns: the offer for the given index, if it exists and is valid, use `EOS_Ecom_CatalogOffer_Release` when finished
    */
    public func CopyOfferByIndex(
        LocalUserId: EOS_EpicAccountId?,
        OfferIndex: Int
    ) throws -> SwiftEOS_Ecom_CatalogOffer {
        try ____CopyOfferByIndex(.init(
                LocalUserId: LocalUserId,
                OfferIndex: OfferIndex
            ))
    }

    /**
    Fetches an image from a given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer image is being copied.
    - Parameter OfferId: The ID of the offer to get the images for.
    - Parameter ImageInfoIndex: The index of the image to get.
    - SeeAlso: `EOS_Ecom_KeyImageInfo_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogOfferStale` if the associated offer information is stale
              `EOS_NotFound` if the image is not found
    - Returns: the image for the given index, if it exists and is valid, use `EOS_Ecom_KeyImageInfo_Release` when finished
    */
    public func CopyOfferImageInfoByIndex(
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?,
        ImageInfoIndex: Int
    ) throws -> SwiftEOS_Ecom_KeyImageInfo {
        try ____CopyOfferImageInfoByIndex(.init(
                LocalUserId: LocalUserId,
                OfferId: OfferId,
                ImageInfoIndex: ImageInfoIndex
            ))
    }

    /**
    Fetches an item from a given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item is being copied
    - Parameter OfferId: The ID of the offer to get the items for.
    - Parameter ItemIndex: The index of the item to get.
    - SeeAlso: `EOS_Ecom_CatalogItem_Release`
    - SeeAlso: `EOS_Ecom_GetItemImageInfoCount`
    - SeeAlso: `EOS_Ecom_GetItemReleaseCount`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogItemStale` if the item information is stale
              `EOS_NotFound` if the item is not found
    - Returns: the item for the given index, if it exists and is valid, use `EOS_Ecom_CatalogItem_Release` when finished
    */
    public func CopyOfferItemByIndex(
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?,
        ItemIndex: Int
    ) throws -> SwiftEOS_Ecom_CatalogItem {
        try ____CopyOfferItemByIndex(.init(
                LocalUserId: LocalUserId,
                OfferId: OfferId,
                ItemIndex: ItemIndex
            ))
    }

    /**
    Fetches the transaction handle at the given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is associated with the transaction
    - Parameter TransactionId: The ID of the transaction to get
    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_Transaction_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the transaction is not found
    - Returns:  
    */
    public func CopyTransactionById(
        LocalUserId: EOS_EpicAccountId?,
        TransactionId: String?
    ) throws -> EOS_Ecom_HTransaction {
        try ____CopyTransactionById(.init(
                LocalUserId: LocalUserId,
                TransactionId: TransactionId
            ))
    }

    /**
    Fetches the transaction handle at the given index.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is associated with the transaction
    - Parameter TransactionIndex: The index of the transaction to get
    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_Transaction_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the transaction is not found
    - Returns:  
    */
    public func CopyTransactionByIndex(
        LocalUserId: EOS_EpicAccountId?,
        TransactionIndex: Int
    ) throws -> EOS_Ecom_HTransaction {
        try ____CopyTransactionByIndex(.init(
                LocalUserId: LocalUserId,
                TransactionIndex: TransactionIndex
            ))
    }

    /**
    Fetch the number of entitlements with the given Entitlement Name that are cached for a given local user.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user for which to retrieve the entitlement count
    - Parameter EntitlementName: Name of the entitlement to count in the cache
    - SeeAlso: `EOS_Ecom_CopyEntitlementByNameAndIndex`
    - Returns: the number of entitlements found.
    */
    public func GetEntitlementsByNameCount(
        LocalUserId: EOS_EpicAccountId?,
        EntitlementName: String?
    ) throws -> Int {
        try ____GetEntitlementsByNameCount(.init(
                LocalUserId: LocalUserId,
                EntitlementName: EntitlementName
            ))
    }

    /**
    Fetch the number of entitlements that are cached for a given local user.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user for which to retrieve the entitlement count
    - SeeAlso: `EOS_Ecom_CopyEntitlementByIndex`
    - Returns: the number of entitlements found.
    */
    public func GetEntitlementsCount(
        LocalUserId: EOS_EpicAccountId?
    ) throws -> Int {
        try ____GetEntitlementsCount(.init(LocalUserId: LocalUserId))
    }

    /**
    Fetch the number of images that are associated with a given cached item for a local user.

    - Returns: the number of images found.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item image is being accessed
    - Parameter ItemId: The ID of the item to get the images for.
    */
    public func GetItemImageInfoCount(
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?
    ) throws -> Int {
        try ____GetItemImageInfoCount(.init(
                LocalUserId: LocalUserId,
                ItemId: ItemId
            ))
    }

    /**
    Fetch the number of releases that are associated with a given cached item for a local user.

    - Returns: the number of releases found.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose item release is being accessed
    - Parameter ItemId: The ID of the item to get the releases for.
    */
    public func GetItemReleaseCount(
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?
    ) throws -> Int {
        try ____GetItemReleaseCount(.init(
                LocalUserId: LocalUserId,
                ItemId: ItemId
            ))
    }

    /**
    Fetch the number of offers that are cached for a given local user.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offers are being accessed
    - SeeAlso: `EOS_Ecom_CopyOfferByIndex`
    - Returns: the number of offers found.
    */
    public func GetOfferCount(
        LocalUserId: EOS_EpicAccountId?
    ) throws -> Int {
        try ____GetOfferCount(.init(LocalUserId: LocalUserId))
    }

    /**
    Fetch the number of images that are associated with a given cached offer for a local user.

    - Returns: the number of images found.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer image is being accessed.
    - Parameter OfferId: The ID of the offer to get the images for.
    */
    public func GetOfferImageInfoCount(
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) throws -> Int {
        try ____GetOfferImageInfoCount(.init(
                LocalUserId: LocalUserId,
                OfferId: OfferId
            ))
    }

    /**
    Fetch the number of items that are associated with a given cached offer for a local user.

    - Returns: the number of items found.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who made the initial request for the Catalog Offer through `EOS_Ecom_QueryOffers`
    - Parameter OfferId: An ID that corresponds to a cached Catalog Offer (retrieved by `EOS_Ecom_CopyOfferByIndex`)
    */
    public func GetOfferItemCount(
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) throws -> Int {
        try ____GetOfferItemCount(.init(
                LocalUserId: LocalUserId,
                OfferId: OfferId
            ))
    }

    /**
    Fetch the number of transactions that are cached for a given local user.

    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_CopyTransactionByIndex`
    - Returns: the number of transactions found.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose transaction count to get
    */
    public func GetTransactionCount(
        LocalUserId: EOS_EpicAccountId?
    ) throws -> Int {
        try ____GetTransactionCount(.init(LocalUserId: LocalUserId))
    }

    /**
    Query the entitlement information defined with Epic Online Services.
    A set of entitlement names can be provided to filter the set of entitlements associated with the account.
    This data will be cached for a limited time and retrieved again from the backend when necessary.
    Use `EOS_Ecom_CopyEntitlementByIndex`, `EOS_Ecom_CopyEntitlementByNameAndIndex`, and `EOS_Ecom_CopyEntitlementById` to get the entitlement details.
    Use `EOS_Ecom_GetEntitlementsByNameCount` to retrieve the number of entitlements with a specific entitlement name.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose Entitlements you want to retrieve
    - Parameter EntitlementNames: An array of Entitlement Names that you want to check
    - Note: ``EOS/_tagEOS_Ecom_QueryEntitlementsOptions/EntitlementNameCount``:
    The number of Entitlement Names included in the array, up to `EOS_ECOM_QUERYENTITLEMENTS_MAX_ENTITLEMENT_IDS`; use zero to request all Entitlements associated with the user's Epic Online Services account.
    - Parameter bIncludeRedeemed: If true, Entitlements that have been redeemed will be included in the results.
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func QueryEntitlements(
        LocalUserId: EOS_EpicAccountId?,
        EntitlementNames: [String]?,
        bIncludeRedeemed: Bool,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryEntitlementsCallbackInfo) -> Void
    ) throws {
        try ____QueryEntitlements(
            .init(
                LocalUserId: LocalUserId,
                EntitlementNames: EntitlementNames,
                bIncludeRedeemed: bIncludeRedeemed
            ),
            CompletionDelegate
        )
    }

    /**
    Query for a list of catalog offers defined with Epic Online Services.
    This data will be cached for a limited time and retrieved again from the backend when necessary.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose offer to query
    - Parameter OverrideCatalogNamespace: If not provided then the SandboxId is used as the catalog namespace
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func QueryOffers(
        LocalUserId: EOS_EpicAccountId?,
        OverrideCatalogNamespace: String?,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOffersCallbackInfo) -> Void
    ) throws {
        try ____QueryOffers(
            .init(
                LocalUserId: LocalUserId,
                OverrideCatalogNamespace: OverrideCatalogNamespace
            ),
            CompletionDelegate
        )
    }

    /**
    Query the ownership status for a given list of catalog item IDs defined with Epic Online Services.
    This data will be cached for a limited time and retrieved again from the backend when necessary

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose ownership to query
    - Parameter CatalogItemIds: The array of Catalog Item IDs to check for ownership
    - Note: ``EOS/_tagEOS_Ecom_QueryOwnershipOptions/CatalogItemIdCount``:
    The number of Catalog Item IDs to in the array
    - Parameter CatalogNamespace: Optional product namespace, if not the one specified during initialization
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func QueryOwnership(
        LocalUserId: EOS_EpicAccountId?,
        CatalogItemIds: [String]?,
        CatalogNamespace: String?,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOwnershipCallbackInfo) -> Void
    ) throws {
        try ____QueryOwnership(
            .init(
                LocalUserId: LocalUserId,
                CatalogItemIds: CatalogItemIds,
                CatalogNamespace: CatalogNamespace
            ),
            CompletionDelegate
        )
    }

    /**
    Query the ownership status for a given list of catalog item IDs defined with Epic Online Services.
    The data is return via the callback in the form of a signed JWT that should be verified by an external backend server using a public key for authenticity.

    - Parameter LocalUserId: The Epic Online Services Account ID of the local user whose ownership token you want to query
    - Parameter CatalogItemIds: The array of Catalog Item IDs to check for ownership, matching in number to the CatalogItemIdCount
    - Note: ``EOS/_tagEOS_Ecom_QueryOwnershipTokenOptions/CatalogItemIdCount``:
    The number of catalog item IDs to query
    - Parameter CatalogNamespace: Optional product namespace, if not the one specified during initialization
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func QueryOwnershipToken(
        LocalUserId: EOS_EpicAccountId?,
        CatalogItemIds: [String]?,
        CatalogNamespace: String?,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo) -> Void
    ) throws {
        try ____QueryOwnershipToken(
            .init(
                LocalUserId: LocalUserId,
                CatalogItemIds: CatalogItemIds,
                CatalogNamespace: CatalogNamespace
            ),
            CompletionDelegate
        )
    }

    /**
    Requests that the provided entitlement be marked redeemed.  This will cause that entitlement
    to no longer be returned from QueryEntitlements unless the include redeemed request flag is set true.

    - Parameter LocalUserId: The Epic Online Services Account ID of the user who is redeeming Entitlements
    - Parameter EntitlementIds: The array of Entitlements to redeem
    - Note: ``EOS/_tagEOS_Ecom_RedeemEntitlementsOptions/EntitlementIdCount``:
    The number of Entitlements to redeem
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    public func RedeemEntitlements(
        LocalUserId: EOS_EpicAccountId?,
        EntitlementIds: [String]?,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo) -> Void
    ) throws {
        try ____RedeemEntitlements(
            .init(
                LocalUserId: LocalUserId,
                EntitlementIds: EntitlementIds
            ),
            CompletionDelegate
        )
    }

    /**
    Fetches an entitlement from a given index.

    - Parameter EntitlementIndex: The index of the entitlement to get
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given index, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    public func Transaction_CopyEntitlementByIndex(
        EntitlementIndex: Int
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try ____Transaction_CopyEntitlementByIndex(.init(EntitlementIndex: EntitlementIndex))
    }

    /**
    Fetch the number of entitlements that are part of this transaction.

    - SeeAlso: `EOS_Ecom_Transaction_CopyEntitlementByIndex`
    - Returns: the number of entitlements found.
    */
    public func Transaction_GetEntitlementsCount() throws -> Int {
        try ____Transaction_GetEntitlementsCount()
    }

    /**
    The Ecom Transaction Interface exposes getters for accessing information about a completed transaction.
    All Ecom Transaction Interface calls take a handle of type `EOS_Ecom_HTransaction` as the first parameter.
    An `EOS_Ecom_HTransaction` handle is originally returned as part of the `EOS_Ecom_CheckoutCallbackInfo` struct.
    An `EOS_Ecom_HTransaction` handle can also be retrieved from an `EOS_HEcom` handle using `EOS_Ecom_CopyTransactionByIndex`.
    It is expected that after a transaction that `EOS_Ecom_Transaction_Release` is called.
    When `EOS_Platform_Release` is called any remaining transactions will also be released.

    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_GetTransactionCount`
    - SeeAlso: `EOS_Ecom_CopyTransactionByIndex`
    - Returns:  
    */
    public func Transaction_GetTransactionId() throws -> String {
        try ____Transaction_GetTransactionId()
    }
}

extension SwiftEOS_Ecom_Actor {

    /**
    Initiates the purchase flow for a set of offers.  The callback is triggered after the purchase flow.
    On success, the set of entitlements that were unlocked will be cached.
    On success, a Transaction ID will be returned. The Transaction ID can be used to obtain an
    `EOS_Ecom_HTransaction` handle. The handle can then be used to retrieve the entitlements rewarded by the purchase.

    - SeeAlso: `EOS_Ecom_Transaction_Release`
    - Parameter Options: structure containing filter criteria
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____Checkout(
        _ Options: SwiftEOS_Ecom_CheckoutOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Ecom_CheckoutCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_Checkout(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_CheckoutCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Fetches the entitlement with the given ID.

    - Parameter Options: structure containing the Epic Online Services Account ID and entitlement ID being accessed
    - SeeAlso: `EOS_Ecom_CopyEntitlementByNameAndIndex`
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given ID, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    private func ____CopyEntitlementById(
        _ Options: SwiftEOS_Ecom_CopyEntitlementByIdOptions
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutEntitlement in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyEntitlementById(
                                    Handle,
                                    Options,
                                    OutEntitlement
                                ) } } },
                    release: EOS_Ecom_Entitlement_Release
                ) } }
    }

    /**
    Fetches an entitlement from a given index.

    - Parameter Options: structure containing the Epic Online Services Account ID and index being accessed
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given index, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    private func ____CopyEntitlementByIndex(
        _ Options: SwiftEOS_Ecom_CopyEntitlementByIndexOptions
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutEntitlement in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyEntitlementByIndex(
                                    Handle,
                                    Options,
                                    OutEntitlement
                                ) } } },
                    release: EOS_Ecom_Entitlement_Release
                ) } }
    }

    /**
    Fetches a single entitlement with a given Entitlement Name.  The Index is used to access individual
    entitlements among those with the same Entitlement Name.  The Index can be a value from 0 to
    one less than the result from `EOS_Ecom_GetEntitlementsByNameCount`.

    - Parameter Options: structure containing the Epic Online Services Account ID, entitlement name, and index being accessed
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given name index pair, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    private func ____CopyEntitlementByNameAndIndex(
        _ Options: SwiftEOS_Ecom_CopyEntitlementByNameAndIndexOptions
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutEntitlement in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyEntitlementByNameAndIndex(
                                    Handle,
                                    Options,
                                    OutEntitlement
                                ) } } },
                    release: EOS_Ecom_Entitlement_Release
                ) } }
    }

    /**
    Fetches an item with a given ID.

    - Parameter Options: structure containing the item ID being accessed
    - SeeAlso: `EOS_Ecom_CatalogItem_Release`
    - SeeAlso: `EOS_Ecom_GetItemImageInfoCount`
    - SeeAlso: `EOS_Ecom_GetItemReleaseCount`
    - Throws: `EOS_Ecom_CatalogItemStale` if the item information is stale and passed out in OutItem
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the offer is not found
    - Returns: the item for the given index, if it exists and is valid, use `EOS_Ecom_CatalogItem_Release` when finished
    */
    private func ____CopyItemById(
        _ Options: SwiftEOS_Ecom_CopyItemByIdOptions
    ) throws -> SwiftEOS_Ecom_CatalogItem {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutItem in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyItemById(
                                    Handle,
                                    Options,
                                    OutItem
                                ) } } },
                    release: EOS_Ecom_CatalogItem_Release
                ) } }
    }

    /**
    Fetches an image from a given index.

    - Parameter Options: structure containing the item ID and index being accessed
    - SeeAlso: `EOS_Ecom_KeyImageInfo_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogItemStale` if the associated item information is stale
              `EOS_NotFound` if the image is not found
    - Returns: the image for the given index, if it exists and is valid, use `EOS_Ecom_KeyImageInfo_Release` when finished
    */
    private func ____CopyItemImageInfoByIndex(
        _ Options: SwiftEOS_Ecom_CopyItemImageInfoByIndexOptions
    ) throws -> SwiftEOS_Ecom_KeyImageInfo {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutImageInfo in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyItemImageInfoByIndex(
                                    Handle,
                                    Options,
                                    OutImageInfo
                                ) } } },
                    release: EOS_Ecom_KeyImageInfo_Release
                ) } }
    }

    /**
    Fetches a release from a given index.

    - Parameter Options: structure containing the item ID and index being accessed
    - SeeAlso: `EOS_Ecom_CatalogRelease_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogItemStale` if the associated item information is stale
              `EOS_NotFound` if the release is not found
    - Returns: the release for the given index, if it exists and is valid, use `EOS_Ecom_CatalogRelease_Release` when finished
    */
    private func ____CopyItemReleaseByIndex(
        _ Options: SwiftEOS_Ecom_CopyItemReleaseByIndexOptions
    ) throws -> SwiftEOS_Ecom_CatalogRelease {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutRelease in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyItemReleaseByIndex(
                                    Handle,
                                    Options,
                                    OutRelease
                                ) } } },
                    release: EOS_Ecom_CatalogRelease_Release
                ) } }
    }

    /**
    Fetches an offer with a given ID.  The pricing and text are localized to the provided account.

    - Parameter Options: structure containing the Epic Online Services Account ID and offer ID being accessed
    - SeeAlso: `EOS_Ecom_CatalogOffer_Release`
    - SeeAlso: `EOS_Ecom_GetOfferItemCount`
    - Throws: `EOS_Ecom_CatalogOfferStale` if the offer information is stale and passed out in OutOffer
              `EOS_Ecom_CatalogOfferPriceInvalid` if the offer information has an invalid price and passed out in OutOffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the offer is not found
    - Returns: the offer for the given index, if it exists and is valid, use `EOS_Ecom_CatalogOffer_Release` when finished
    */
    private func ____CopyOfferById(
        _ Options: SwiftEOS_Ecom_CopyOfferByIdOptions
    ) throws -> SwiftEOS_Ecom_CatalogOffer {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutOffer in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyOfferById(
                                    Handle,
                                    Options,
                                    OutOffer
                                ) } } },
                    release: EOS_Ecom_CatalogOffer_Release
                ) } }
    }

    /**
    Fetches an offer from a given index.  The pricing and text are localized to the provided account.

    - Parameter Options: structure containing the Epic Online Services Account ID and index being accessed
    - SeeAlso: `EOS_Ecom_CatalogOffer_Release`
    - SeeAlso: `EOS_Ecom_GetOfferItemCount`
    - Throws: `EOS_Ecom_CatalogOfferStale` if the offer information is stale and passed out in OutOffer
              `EOS_Ecom_CatalogOfferPriceInvalid` if the offer information has an invalid price and passed out in OutOffer
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the offer is not found
    - Returns: the offer for the given index, if it exists and is valid, use `EOS_Ecom_CatalogOffer_Release` when finished
    */
    private func ____CopyOfferByIndex(
        _ Options: SwiftEOS_Ecom_CopyOfferByIndexOptions
    ) throws -> SwiftEOS_Ecom_CatalogOffer {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutOffer in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyOfferByIndex(
                                    Handle,
                                    Options,
                                    OutOffer
                                ) } } },
                    release: EOS_Ecom_CatalogOffer_Release
                ) } }
    }

    /**
    Fetches an image from a given index.

    - Parameter Options: structure containing the offer ID and index being accessed
    - SeeAlso: `EOS_Ecom_KeyImageInfo_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogOfferStale` if the associated offer information is stale
              `EOS_NotFound` if the image is not found
    - Returns: the image for the given index, if it exists and is valid, use `EOS_Ecom_KeyImageInfo_Release` when finished
    */
    private func ____CopyOfferImageInfoByIndex(
        _ Options: SwiftEOS_Ecom_CopyOfferImageInfoByIndexOptions
    ) throws -> SwiftEOS_Ecom_KeyImageInfo {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutImageInfo in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyOfferImageInfoByIndex(
                                    Handle,
                                    Options,
                                    OutImageInfo
                                ) } } },
                    release: EOS_Ecom_KeyImageInfo_Release
                ) } }
    }

    /**
    Fetches an item from a given index.

    - Parameter Options: structure containing the Epic Online Services Account ID and index being accessed
    - SeeAlso: `EOS_Ecom_CatalogItem_Release`
    - SeeAlso: `EOS_Ecom_GetItemImageInfoCount`
    - SeeAlso: `EOS_Ecom_GetItemReleaseCount`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_Ecom_CatalogItemStale` if the item information is stale
              `EOS_NotFound` if the item is not found
    - Returns: the item for the given index, if it exists and is valid, use `EOS_Ecom_CatalogItem_Release` when finished
    */
    private func ____CopyOfferItemByIndex(
        _ Options: SwiftEOS_Ecom_CopyOfferItemByIndexOptions
    ) throws -> SwiftEOS_Ecom_CatalogItem {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutItem in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_CopyOfferItemByIndex(
                                    Handle,
                                    Options,
                                    OutItem
                                ) } } },
                    release: EOS_Ecom_CatalogItem_Release
                ) } }
    }

    /**
    Fetches the transaction handle at the given index.

    - Parameter Options: structure containing the Epic Online Services Account ID and transaction ID being accessed
    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_Transaction_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the transaction is not found
    - Returns:  
    */
    private func ____CopyTransactionById(
        _ Options: SwiftEOS_Ecom_CopyTransactionByIdOptions
    ) throws -> EOS_Ecom_HTransaction {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutTransaction in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Ecom_CopyTransactionById(
                                Handle,
                                Options,
                                OutTransaction
                            ) } } } } }
    }

    /**
    Fetches the transaction handle at the given index.

    - Parameter Options: structure containing the Epic Online Services Account ID and index being accessed
    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_Transaction_Release`
    - Throws: `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the transaction is not found
    - Returns:  
    */
    private func ____CopyTransactionByIndex(
        _ Options: SwiftEOS_Ecom_CopyTransactionByIndexOptions
    ) throws -> EOS_Ecom_HTransaction {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withHandleReturned(managedBy: pointerManager) { OutTransaction in
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        try throwingSdkResult { 
                            EOS_Ecom_CopyTransactionByIndex(
                                Handle,
                                Options,
                                OutTransaction
                            ) } } } } }
    }

    /**
    Fetch the number of entitlements with the given Entitlement Name that are cached for a given local user.

    - Parameter Options: structure containing the Epic Online Services Account ID and name being accessed
    - SeeAlso: `EOS_Ecom_CopyEntitlementByNameAndIndex`
    - Returns: the number of entitlements found.
    */
    private func ____GetEntitlementsByNameCount(
        _ Options: SwiftEOS_Ecom_GetEntitlementsByNameCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetEntitlementsByNameCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of entitlements that are cached for a given local user.

    - Parameter Options: structure containing the Epic Online Services Account ID being accessed
    - SeeAlso: `EOS_Ecom_CopyEntitlementByIndex`
    - Returns: the number of entitlements found.
    */
    private func ____GetEntitlementsCount(
        _ Options: SwiftEOS_Ecom_GetEntitlementsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetEntitlementsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of images that are associated with a given cached item for a local user.

    - Returns: the number of images found.
    */
    private func ____GetItemImageInfoCount(
        _ Options: SwiftEOS_Ecom_GetItemImageInfoCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetItemImageInfoCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of releases that are associated with a given cached item for a local user.

    - Returns: the number of releases found.
    */
    private func ____GetItemReleaseCount(
        _ Options: SwiftEOS_Ecom_GetItemReleaseCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetItemReleaseCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of offers that are cached for a given local user.

    - Parameter Options: structure containing the Epic Online Services Account ID being accessed
    - SeeAlso: `EOS_Ecom_CopyOfferByIndex`
    - Returns: the number of offers found.
    */
    private func ____GetOfferCount(
        _ Options: SwiftEOS_Ecom_GetOfferCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetOfferCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of images that are associated with a given cached offer for a local user.

    - Returns: the number of images found.
    */
    private func ____GetOfferImageInfoCount(
        _ Options: SwiftEOS_Ecom_GetOfferImageInfoCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetOfferImageInfoCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of items that are associated with a given cached offer for a local user.

    - Returns: the number of items found.
    */
    private func ____GetOfferItemCount(
        _ Options: SwiftEOS_Ecom_GetOfferItemCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetOfferItemCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Fetch the number of transactions that are cached for a given local user.

    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_CopyTransactionByIndex`
    - Returns: the number of transactions found.
    */
    private func ____GetTransactionCount(
        _ Options: SwiftEOS_Ecom_GetTransactionCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetTransactionCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    Query the entitlement information defined with Epic Online Services.
    A set of entitlement names can be provided to filter the set of entitlements associated with the account.
    This data will be cached for a limited time and retrieved again from the backend when necessary.
    Use `EOS_Ecom_CopyEntitlementByIndex`, `EOS_Ecom_CopyEntitlementByNameAndIndex`, and `EOS_Ecom_CopyEntitlementById` to get the entitlement details.
    Use `EOS_Ecom_GetEntitlementsByNameCount` to retrieve the number of entitlements with a specific entitlement name.

    - Parameter Options: structure containing the account and entitlement names to retrieve
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____QueryEntitlements(
        _ Options: SwiftEOS_Ecom_QueryEntitlementsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryEntitlementsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryEntitlements(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryEntitlementsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Query for a list of catalog offers defined with Epic Online Services.
    This data will be cached for a limited time and retrieved again from the backend when necessary.

    - Parameter Options: structure containing filter criteria
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____QueryOffers(
        _ Options: SwiftEOS_Ecom_QueryOffersOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOffersCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryOffers(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryOffersCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Query the ownership status for a given list of catalog item IDs defined with Epic Online Services.
    This data will be cached for a limited time and retrieved again from the backend when necessary

    - Parameter Options: structure containing the account and catalog item IDs to retrieve
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____QueryOwnership(
        _ Options: SwiftEOS_Ecom_QueryOwnershipOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOwnershipCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryOwnership(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryOwnershipCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Query the ownership status for a given list of catalog item IDs defined with Epic Online Services.
    The data is return via the callback in the form of a signed JWT that should be verified by an external backend server using a public key for authenticity.

    - Parameter Options: structure containing the account and catalog item IDs to retrieve in token form
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____QueryOwnershipToken(
        _ Options: SwiftEOS_Ecom_QueryOwnershipTokenOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryOwnershipToken(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Requests that the provided entitlement be marked redeemed.  This will cause that entitlement
    to no longer be returned from QueryEntitlements unless the include redeemed request flag is set true.

    - Parameter Options: structure containing entitlement to redeem
    - Parameter CompletionDelegate: a callback that is fired when the async operation completes, either successfully or in error
    */
    private func ____RedeemEntitlements(
        _ Options: SwiftEOS_Ecom_RedeemEntitlementsOptions,
        _ CompletionDelegate: @escaping (SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_RedeemEntitlements(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Fetches an entitlement from a given index.

    - Parameter Options: structure containing the index being accessed
    - SeeAlso: `EOS_Ecom_Entitlement_Release`
    - Throws: `EOS_Ecom_EntitlementStale` if the entitlement information is stale and passed out in OutEntitlement
              `EOS_InvalidParameters` if you pass a null pointer for the out parameter
              `EOS_NotFound` if the entitlement is not found
    - Returns: the entitlement for the given index, if it exists and is valid, use `EOS_Ecom_Entitlement_Release` when finished
    */
    private func ____Transaction_CopyEntitlementByIndex(
        _ Options: SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexOptions
    ) throws -> SwiftEOS_Ecom_Entitlement {
        try withPointerManager { pointerManager in
            try throwingNilResult { 
                try withSdkObjectOptionalPointerToOptionalPointerReturnedAsOptionalSwiftObject(
                    managedBy: pointerManager,
                    nest: { OutEntitlement in
                        try withSdkObjectOptionalPointerFromOptionalSwiftObject(Options, managedBy: pointerManager) { Options in
                            try throwingSdkResult { 
                                EOS_Ecom_Transaction_CopyEntitlementByIndex(
                                    Handle,
                                    Options,
                                    OutEntitlement
                                ) } } },
                    release: EOS_Ecom_Entitlement_Release
                ) } }
    }

    /**
    Fetch the number of entitlements that are part of this transaction.

    - SeeAlso: `EOS_Ecom_Transaction_CopyEntitlementByIndex`
    - Returns: the number of entitlements found.
    */
    private func ____Transaction_GetEntitlementsCount() throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectOptionalMutablePointerFromSwiftObject(SwiftEOS_Ecom_Transaction_GetEntitlementsCountOptions(), managedBy: pointerManager) { Options in
                        EOS_Ecom_Transaction_GetEntitlementsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
    The Ecom Transaction Interface exposes getters for accessing information about a completed transaction.
    All Ecom Transaction Interface calls take a handle of type `EOS_Ecom_HTransaction` as the first parameter.
    An `EOS_Ecom_HTransaction` handle is originally returned as part of the `EOS_Ecom_CheckoutCallbackInfo` struct.
    An `EOS_Ecom_HTransaction` handle can also be retrieved from an `EOS_HEcom` handle using `EOS_Ecom_CopyTransactionByIndex`.
    It is expected that after a transaction that `EOS_Ecom_Transaction_Release` is called.
    When `EOS_Platform_Release` is called any remaining transactions will also be released.

    - SeeAlso: `EOS_Ecom_CheckoutCallbackInfo`
    - SeeAlso: `EOS_Ecom_GetTransactionCount`
    - SeeAlso: `EOS_Ecom_CopyTransactionByIndex`
    - Returns:  
    */
    private func ____Transaction_GetTransactionId() throws -> String {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsString { OutBuffer, InOutBufferLength in
                try throwingSdkResult { 
                    EOS_Ecom_Transaction_GetTransactionId(
                        Handle,
                        OutBuffer,
                        InOutBufferLength
                    ) } } }
    }
}
