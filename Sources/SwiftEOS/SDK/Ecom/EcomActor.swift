import Foundation
import EOSSDK
public class SwiftEOS_Ecom_Actor: SwiftEOSActor {
    public let Handle: EOS_HEcom

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HEcom
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Initiates the purchase flow for a set of offers.  The callback is triggered after the purchase flow.
     * On success, the set of entitlements that were unlocked will be cached.
     * On success, a Transaction ID will be returned. The Transaction ID can be used to obtain an
     * EOS_Ecom_HTransaction handle. The handle can then be used to retrieve the entitlements rewarded by the purchase.
     * 
     * @see EOS_Ecom_Transaction_Release
     * 
     * - Parameter Options:  structure containing filter criteria
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func Checkout(
        Options: SwiftEOS_Ecom_CheckoutOptions,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_CheckoutCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_Checkout(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_CheckoutCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Fetches the entitlement with the given ID.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and entitlement ID being accessed
     * - Parameter OutEntitlement:  the entitlement for the given ID, if it exists and is valid, use EOS_Ecom_Entitlement_Release when finished
     * 
     * @see EOS_Ecom_CopyEntitlementByNameAndIndex
     * @see EOS_Ecom_Entitlement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutEntitlement
     *         EOS_Ecom_EntitlementStale if the entitlement information is stale and passed out in OutEntitlement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the entitlement is not found
     */
    public func CopyEntitlementById(
        Options: SwiftEOS_Ecom_CopyEntitlementByIdOptions,
        OutEntitlement: inout SwiftEOS_Ecom_Entitlement?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutEntitlement, managedBy: pointerManager) { OutEntitlement in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyEntitlementById(
                            Handle,
                            Options,
                            OutEntitlement
                        ) } } } }
    }

    /**
     * Fetches an entitlement from a given index.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and index being accessed
     * - Parameter OutEntitlement:  the entitlement for the given index, if it exists and is valid, use EOS_Ecom_Entitlement_Release when finished
     * 
     * @see EOS_Ecom_Entitlement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutEntitlement
     *         EOS_Ecom_EntitlementStale if the entitlement information is stale and passed out in OutEntitlement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the entitlement is not found
     */
    public func CopyEntitlementByIndex(
        Options: SwiftEOS_Ecom_CopyEntitlementByIndexOptions,
        OutEntitlement: inout SwiftEOS_Ecom_Entitlement?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutEntitlement, managedBy: pointerManager) { OutEntitlement in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyEntitlementByIndex(
                            Handle,
                            Options,
                            OutEntitlement
                        ) } } } }
    }

    /**
     * Fetches a single entitlement with a given Entitlement Name.  The Index is used to access individual
     * entitlements among those with the same Entitlement Name.  The Index can be a value from 0 to
     * one less than the result from EOS_Ecom_GetEntitlementsByNameCount.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID, entitlement name, and index being accessed
     * - Parameter OutEntitlement:  the entitlement for the given name index pair, if it exists and is valid, use EOS_Ecom_Entitlement_Release when finished
     * 
     * @see EOS_Ecom_Entitlement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutEntitlement
     *         EOS_Ecom_EntitlementStale if the entitlement information is stale and passed out in OutEntitlement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the entitlement is not found
     */
    public func CopyEntitlementByNameAndIndex(
        Options: SwiftEOS_Ecom_CopyEntitlementByNameAndIndexOptions,
        OutEntitlement: inout SwiftEOS_Ecom_Entitlement?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutEntitlement, managedBy: pointerManager) { OutEntitlement in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyEntitlementByNameAndIndex(
                            Handle,
                            Options,
                            OutEntitlement
                        ) } } } }
    }

    /**
     * Fetches an item with a given ID.
     * 
     * - Parameter Options:  structure containing the item ID being accessed
     * - Parameter OutItem:  the item for the given index, if it exists and is valid, use EOS_Ecom_CatalogItem_Release when finished
     * 
     * @see EOS_Ecom_CatalogItem_Release
     * @see EOS_Ecom_GetItemImageInfoCount
     * @see EOS_Ecom_GetItemReleaseCount
     * 
     * @return EOS_Success if the information is available and passed out in OutItem
     *         EOS_Ecom_CatalogItemStale if the item information is stale and passed out in OutItem
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the offer is not found
     */
    public func CopyItemById(
        Options: SwiftEOS_Ecom_CopyItemByIdOptions,
        OutItem: inout SwiftEOS_Ecom_CatalogItem?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutItem, managedBy: pointerManager) { OutItem in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyItemById(
                            Handle,
                            Options,
                            OutItem
                        ) } } } }
    }

    /**
     * Fetches an image from a given index.
     * 
     * - Parameter Options:  structure containing the item ID and index being accessed
     * - Parameter OutImageInfo:  the image for the given index, if it exists and is valid, use EOS_Ecom_KeyImageInfo_Release when finished
     * 
     * @see EOS_Ecom_KeyImageInfo_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutImageInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_Ecom_CatalogItemStale if the associated item information is stale
     *         EOS_NotFound if the image is not found
     */
    public func CopyItemImageInfoByIndex(
        Options: SwiftEOS_Ecom_CopyItemImageInfoByIndexOptions,
        OutImageInfo: inout SwiftEOS_Ecom_KeyImageInfo?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutImageInfo, managedBy: pointerManager) { OutImageInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyItemImageInfoByIndex(
                            Handle,
                            Options,
                            OutImageInfo
                        ) } } } }
    }

    /**
     * Fetches a release from a given index.
     * 
     * - Parameter Options:  structure containing the item ID and index being accessed
     * - Parameter OutRelease:  the release for the given index, if it exists and is valid, use EOS_Ecom_CatalogRelease_Release when finished
     * 
     * @see EOS_Ecom_CatalogRelease_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutRelease
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_Ecom_CatalogItemStale if the associated item information is stale
     *         EOS_NotFound if the release is not found
     */
    public func CopyItemReleaseByIndex(
        Options: SwiftEOS_Ecom_CopyItemReleaseByIndexOptions,
        OutRelease: inout SwiftEOS_Ecom_CatalogRelease?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutRelease, managedBy: pointerManager) { OutRelease in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyItemReleaseByIndex(
                            Handle,
                            Options,
                            OutRelease
                        ) } } } }
    }

    /**
     * Fetches an offer with a given ID.  The pricing and text are localized to the provided account.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and offer ID being accessed
     * - Parameter OutOffer:  the offer for the given index, if it exists and is valid, use EOS_Ecom_CatalogOffer_Release when finished
     * 
     * @see EOS_Ecom_CatalogOffer_Release
     * @see EOS_Ecom_GetOfferItemCount
     * 
     * @return EOS_Success if the information is available and passed out in OutOffer
     *         EOS_Ecom_CatalogOfferStale if the offer information is stale and passed out in OutOffer
     *         EOS_Ecom_CatalogOfferPriceInvalid if the offer information has an invalid price and passed out in OutOffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the offer is not found
     */
    public func CopyOfferById(
        Options: SwiftEOS_Ecom_CopyOfferByIdOptions,
        OutOffer: inout SwiftEOS_Ecom_CatalogOffer?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutOffer, managedBy: pointerManager) { OutOffer in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyOfferById(
                            Handle,
                            Options,
                            OutOffer
                        ) } } } }
    }

    /**
     * Fetches an offer from a given index.  The pricing and text are localized to the provided account.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and index being accessed
     * - Parameter OutOffer:  the offer for the given index, if it exists and is valid, use EOS_Ecom_CatalogOffer_Release when finished
     * 
     * @see EOS_Ecom_CatalogOffer_Release
     * @see EOS_Ecom_GetOfferItemCount
     * 
     * @return EOS_Success if the information is available and passed out in OutOffer
     *         EOS_Ecom_CatalogOfferStale if the offer information is stale and passed out in OutOffer
     *         EOS_Ecom_CatalogOfferPriceInvalid if the offer information has an invalid price and passed out in OutOffer
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the offer is not found
     */
    public func CopyOfferByIndex(
        Options: SwiftEOS_Ecom_CopyOfferByIndexOptions,
        OutOffer: inout SwiftEOS_Ecom_CatalogOffer?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutOffer, managedBy: pointerManager) { OutOffer in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyOfferByIndex(
                            Handle,
                            Options,
                            OutOffer
                        ) } } } }
    }

    /**
     * Fetches an image from a given index.
     * 
     * - Parameter Options:  structure containing the offer ID and index being accessed
     * - Parameter OutImageInfo:  the image for the given index, if it exists and is valid, use EOS_Ecom_KeyImageInfo_Release when finished
     * 
     * @see EOS_Ecom_KeyImageInfo_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutImageInfo
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_Ecom_CatalogOfferStale if the associated offer information is stale
     *         EOS_NotFound if the image is not found
     */
    public func CopyOfferImageInfoByIndex(
        Options: SwiftEOS_Ecom_CopyOfferImageInfoByIndexOptions,
        OutImageInfo: inout SwiftEOS_Ecom_KeyImageInfo?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutImageInfo, managedBy: pointerManager) { OutImageInfo in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyOfferImageInfoByIndex(
                            Handle,
                            Options,
                            OutImageInfo
                        ) } } } }
    }

    /**
     * Fetches an item from a given index.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and index being accessed
     * - Parameter OutItem:  the item for the given index, if it exists and is valid, use EOS_Ecom_CatalogItem_Release when finished
     * 
     * @see EOS_Ecom_CatalogItem_Release
     * @see EOS_Ecom_GetItemImageInfoCount
     * @see EOS_Ecom_GetItemReleaseCount
     * 
     * @return EOS_Success if the information is available and passed out in OutItem
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_Ecom_CatalogItemStale if the item information is stale
     *         EOS_NotFound if the item is not found
     */
    public func CopyOfferItemByIndex(
        Options: SwiftEOS_Ecom_CopyOfferItemByIndexOptions,
        OutItem: inout SwiftEOS_Ecom_CatalogItem?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutItem, managedBy: pointerManager) { OutItem in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyOfferItemByIndex(
                            Handle,
                            Options,
                            OutItem
                        ) } } } }
    }

    /**
     * Fetches the transaction handle at the given index.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and transaction ID being accessed
     * 
     * @see EOS_Ecom_CheckoutCallbackInfo
     * @see EOS_Ecom_Transaction_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutTransaction
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the transaction is not found
     */
    public func CopyTransactionById(
        Options: SwiftEOS_Ecom_CopyTransactionByIdOptions,
        OutTransaction: inout EOS_Ecom_HTransaction?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutTransaction, managedBy: pointerManager) { OutTransaction in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyTransactionById(
                            Handle,
                            Options,
                            OutTransaction
                        ) } } } }
    }

    /**
     * Fetches the transaction handle at the given index.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and index being accessed
     * 
     * @see EOS_Ecom_CheckoutCallbackInfo
     * @see EOS_Ecom_Transaction_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutTransaction
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the transaction is not found
     */
    public func CopyTransactionByIndex(
        Options: SwiftEOS_Ecom_CopyTransactionByIndexOptions,
        OutTransaction: inout EOS_Ecom_HTransaction?
    ) throws {
        try withPointerManager { pointerManager in
            try withOptionalTrivialMutablePointerFromInOutOptionalTrivial(&OutTransaction, managedBy: pointerManager) { OutTransaction in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_CopyTransactionByIndex(
                            Handle,
                            Options,
                            OutTransaction
                        ) } } } }
    }

    /**
     * Fetch the number of entitlements with the given Entitlement Name that are cached for a given local user.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID and name being accessed
     * 
     * @see EOS_Ecom_CopyEntitlementByNameAndIndex
     * 
     * @return the number of entitlements found.
     */
    public func GetEntitlementsByNameCount(
        Options: SwiftEOS_Ecom_GetEntitlementsByNameCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetEntitlementsByNameCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of entitlements that are cached for a given local user.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID being accessed
     * 
     * @see EOS_Ecom_CopyEntitlementByIndex
     * 
     * @return the number of entitlements found.
     */
    public func GetEntitlementsCount(
        Options: SwiftEOS_Ecom_GetEntitlementsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetEntitlementsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of images that are associated with a given cached item for a local user.
     * 
     * @return the number of images found.
     */
    public func GetItemImageInfoCount(
        Options: SwiftEOS_Ecom_GetItemImageInfoCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetItemImageInfoCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of releases that are associated with a given cached item for a local user.
     * 
     * @return the number of releases found.
     */
    public func GetItemReleaseCount(
        Options: SwiftEOS_Ecom_GetItemReleaseCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetItemReleaseCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of offers that are cached for a given local user.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID being accessed
     * 
     * @see EOS_Ecom_CopyOfferByIndex
     * 
     * @return the number of offers found.
     */
    public func GetOfferCount(
        Options: SwiftEOS_Ecom_GetOfferCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetOfferCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of images that are associated with a given cached offer for a local user.
     * 
     * @return the number of images found.
     */
    public func GetOfferImageInfoCount(
        Options: SwiftEOS_Ecom_GetOfferImageInfoCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetOfferImageInfoCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of items that are associated with a given cached offer for a local user.
     * 
     * @return the number of items found.
     */
    public func GetOfferItemCount(
        Options: SwiftEOS_Ecom_GetOfferItemCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetOfferItemCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Fetch the number of transactions that are cached for a given local user.
     * 
     * @see EOS_Ecom_CheckoutCallbackInfo
     * @see EOS_Ecom_CopyTransactionByIndex
     * 
     * @return the number of transactions found.
     */
    public func GetTransactionCount(
        Options: SwiftEOS_Ecom_GetTransactionCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_GetTransactionCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Query the entitlement information defined with Epic Online Services.
     * A set of entitlement names can be provided to filter the set of entitlements associated with the account.
     * This data will be cached for a limited time and retrieved again from the backend when necessary.
     * Use EOS_Ecom_CopyEntitlementByIndex, EOS_Ecom_CopyEntitlementByNameAndIndex, and EOS_Ecom_CopyEntitlementById to get the entitlement details.
     * Use EOS_Ecom_GetEntitlementsByNameCount to retrieve the number of entitlements with a specific entitlement name.
     * 
     * - Parameter Options:  structure containing the account and entitlement names to retrieve
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func QueryEntitlements(
        Options: SwiftEOS_Ecom_QueryEntitlementsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryEntitlementsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryEntitlements(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryEntitlementsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query for a list of catalog offers defined with Epic Online Services.
     * This data will be cached for a limited time and retrieved again from the backend when necessary.
     * 
     * - Parameter Options:  structure containing filter criteria
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func QueryOffers(
        Options: SwiftEOS_Ecom_QueryOffersOptions,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOffersCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryOffers(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryOffersCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query the ownership status for a given list of catalog item IDs defined with Epic Online Services.
     * This data will be cached for a limited time and retrieved again from the backend when necessary
     * 
     * - Parameter Options:  structure containing the account and catalog item IDs to retrieve
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func QueryOwnership(
        Options: SwiftEOS_Ecom_QueryOwnershipOptions,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOwnershipCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryOwnership(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryOwnershipCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query the ownership status for a given list of catalog item IDs defined with Epic Online Services.
     * The data is return via the callback in the form of a signed JWT that should be verified by an external backend server using a public key for authenticity.
     * 
     * - Parameter Options:  structure containing the account and catalog item IDs to retrieve in token form
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func QueryOwnershipToken(
        Options: SwiftEOS_Ecom_QueryOwnershipTokenOptions,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_QueryOwnershipToken(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Requests that the provided entitlement be marked redeemed.  This will cause that entitlement
     * to no longer be returned from QueryEntitlements unless the include redeemed request flag is set true.
     * 
     * - Parameter Options:  structure containing entitlement to redeem
     * - Parameter ClientData:  arbitrary data that is passed back to you in the CompletionDelegate
     * - Parameter CompletionDelegate:  a callback that is fired when the async operation completes, either successfully or in error
     */
    public func RedeemEntitlements(
        Options: SwiftEOS_Ecom_RedeemEntitlementsOptions,
        CompletionDelegate: @escaping (SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionDelegate, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_Ecom_RedeemEntitlements(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Fetches an entitlement from a given index.
     * 
     * - Parameter Options:  structure containing the index being accessed
     * - Parameter OutEntitlement:  the entitlement for the given index, if it exists and is valid, use EOS_Ecom_Entitlement_Release when finished
     * 
     * @see EOS_Ecom_Entitlement_Release
     * 
     * @return EOS_Success if the information is available and passed out in OutEntitlement
     *         EOS_Ecom_EntitlementStale if the entitlement information is stale and passed out in OutEntitlement
     *         EOS_InvalidParameters if you pass a null pointer for the out parameter
     *         EOS_NotFound if the entitlement is not found
     */
    public func Transaction_CopyEntitlementByIndex(
        Options: SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexOptions,
        OutEntitlement: inout SwiftEOS_Ecom_Entitlement?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutEntitlement, managedBy: pointerManager) { OutEntitlement in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_Ecom_Transaction_CopyEntitlementByIndex(
                            Handle,
                            Options,
                            OutEntitlement
                        ) } } } }
    }

    /**
     * Fetch the number of entitlements that are part of this transaction.
     * 
     * - Parameter Options:  structure containing the Epic Online Services Account ID being accessed
     * 
     * @see EOS_Ecom_Transaction_CopyEntitlementByIndex
     * 
     * @return the number of entitlements found.
     */
    public func Transaction_GetEntitlementsCount(
        Options: SwiftEOS_Ecom_Transaction_GetEntitlementsCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_Ecom_Transaction_GetEntitlementsCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * The Ecom Transaction Interface exposes getters for accessing information about a completed transaction.
     * All Ecom Transaction Interface calls take a handle of type EOS_Ecom_HTransaction as the first parameter.
     * An EOS_Ecom_HTransaction handle is originally returned as part of the EOS_Ecom_CheckoutCallbackInfo struct.
     * An EOS_Ecom_HTransaction handle can also be retrieved from an EOS_HEcom handle using EOS_Ecom_CopyTransactionByIndex.
     * It is expected that after a transaction that EOS_Ecom_Transaction_Release is called.
     * When EOS_Platform_Release is called any remaining transactions will also be released.
     * 
     * @see EOS_Ecom_CheckoutCallbackInfo
     * @see EOS_Ecom_GetTransactionCount
     * @see EOS_Ecom_CopyTransactionByIndex
     * - Parameter OutBuffer:  - array num: InOutBufferLength
     */
    public func Transaction_GetTransactionId(
        OutBuffer: inout String?
    ) throws {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
                try throwingSdkResult { 
                    EOS_Ecom_Transaction_GetTransactionId(
                        Handle,
                        OutBuffer,
                        InOutBufferLength
                    ) } } }
    }
}