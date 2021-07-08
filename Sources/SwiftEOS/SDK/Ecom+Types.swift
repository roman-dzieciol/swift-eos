import Foundation
import EOSSDK

/**
 * A unique identifier for a catalog item defined and stored with the backend catalog service.
 * A catalog item represents a distinct object within the catalog.  When acquired by an account, an
 * entitlement is granted that references a specific catalog item.
 */
public typealias SwiftEOS_Ecom_CatalogItemId = UnsafeMutablePointer<CChar>?

/**
 * A unique identifier for a catalog offer defined and stored with the backend catalog service.
 * A catalog offer is a purchasable collection of 1 or more items, associated with a price (which
 * could be 0).  When an offer is purchased an entitlement is granted for each of the items
 * referenced by the offer.
 */
public typealias SwiftEOS_Ecom_CatalogOfferId = UnsafeMutablePointer<CChar>?

/**
 * A unique identifier for an entitlement owned by an account.  An entitlement is always associated
 * with a single account.  The entitlement ID is provided to allow redeeming the entitlement as
 * well as identify individual entitlement grants.
 * 
 * @see EOS_Ecom_QueryEntitlements
 * @see EOS_Ecom_RedeemEntitlements
 */
public typealias SwiftEOS_Ecom_EntitlementId = UnsafeMutablePointer<CChar>?

/**
 * An identifier which is defined on a catalog item and stored with the backend catalog service.
 * The entitlement name may not be unique.  A catalog may be configured with multiple items with the
 * same entitlement name in order to define a logical grouping of entitlements.  This is used to
 * retrieve all entitlements granted to an account grouped in this way.
 * 
 * @see EOS_Ecom_QueryEntitlements
 */
public typealias SwiftEOS_Ecom_EntitlementName = UnsafeMutablePointer<CChar>?

/**
 * Contains information about a single item within the catalog. Instances of this structure are created
 * by EOS_Ecom_CopyOfferItemByIndex. They must be passed to EOS_Ecom_CatalogItem_Release.
 * 
 * - see: release func: EOS_Ecom_CatalogItem_Release
 */
public struct SwiftEOS_Ecom_CatalogItem: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_CATALOGITEM_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product namespace in which this item exists  */
    public let CatalogNamespace: String?

    /** The ID of this item  */
    public let Id: String?

    /** The entitlement name associated with this item  */
    public let EntitlementName: String?

    /** Localized UTF-8 title of this item  */
    public let TitleText: String?

    /** Localized UTF-8 description of this item  */
    public let DescriptionText: String?

    /** Localized UTF-8 long description of this item  */
    public let LongDescriptionText: String?

    /** Localized UTF-8 technical details of this item  */
    public let TechnicalDetailsText: String?

    /** Localized UTF-8 developer of this item  */
    public let DeveloperText: String?

    /** The type of item as defined in the catalog  */
    public let ItemType: EOS_EEcomItemType

    /** If not -1 then this is the POSIX timestamp that the entitlement will end  */
    public let EntitlementEndTimestamp: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CatalogItem {
        try _tagEOS_Ecom_CatalogItem(
            ApiVersion: ApiVersion,
            CatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: CatalogNamespace?.utf8CString),
            Id: pointerManager.managedMutablePointerToBuffer(copyingArray: Id?.utf8CString),
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString),
            TitleText: pointerManager.managedPointerToBuffer(copyingArray: TitleText?.utf8CString),
            DescriptionText: pointerManager.managedPointerToBuffer(copyingArray: DescriptionText?.utf8CString),
            LongDescriptionText: pointerManager.managedPointerToBuffer(copyingArray: LongDescriptionText?.utf8CString),
            TechnicalDetailsText: pointerManager.managedPointerToBuffer(copyingArray: TechnicalDetailsText?.utf8CString),
            DeveloperText: pointerManager.managedPointerToBuffer(copyingArray: DeveloperText?.utf8CString),
            ItemType: ItemType,
            EntitlementEndTimestamp: try safeNumericCast(exactly: EntitlementEndTimestamp)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CatalogItem?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.CatalogNamespace = String(cString: sdkObject.CatalogNamespace)
        self.Id = String(cString: sdkObject.Id)
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
        self.TitleText = String(cString: sdkObject.TitleText)
        self.DescriptionText = String(cString: sdkObject.DescriptionText)
        self.LongDescriptionText = String(cString: sdkObject.LongDescriptionText)
        self.TechnicalDetailsText = String(cString: sdkObject.TechnicalDetailsText)
        self.DeveloperText = String(cString: sdkObject.DeveloperText)
        self.ItemType = sdkObject.ItemType
        self.EntitlementEndTimestamp = try safeNumericCast(exactly: sdkObject.EntitlementEndTimestamp)
    }
}

/**
 * Contains information about a single offer within the catalog. Instances of this structure are
 * created by EOS_Ecom_CopyOfferByIndex. They must be passed to EOS_Ecom_CatalogOffer_Release.
 * Prices are stored in the lowest denomination for the associated currency.  If CurrencyCode is
 * "USD" then a price of 299 represents "$2.99".
 * 
 * - see: release func: EOS_Ecom_CatalogOffer_Release
 */
public struct SwiftEOS_Ecom_CatalogOffer: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_CATALOGOFFER_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The index of this offer as it exists on the server.
     * This is useful for understanding pagination data.
     */
    public let ServerIndex: Int

    /** Product namespace in which this offer exists  */
    public let CatalogNamespace: String?

    /** The ID of this offer  */
    public let Id: String?

    /** Localized UTF-8 title of this offer  */
    public let TitleText: String?

    /** Localized UTF-8 description of this offer  */
    public let DescriptionText: String?

    /** Localized UTF-8 long description of this offer  */
    public let LongDescriptionText: String?

    /**
     * Deprecated.
     * EOS_Ecom_CatalogOffer::TechnicalDetailsText has been deprecated.
     * EOS_Ecom_CatalogItem::TechnicalDetailsText is still valid.
     */
    public let TechnicalDetailsText_DEPRECATED: String?

    /** The Currency Code for this offer  */
    public let CurrencyCode: String?

    /**
     * If this value is EOS_Success then OriginalPrice, CurrentPrice, and DiscountPercentage contain valid data.
     * Otherwise this value represents the error that occurred on the price query.
     */
    public let PriceResult: EOS_EResult

    /** The original price of this offer as a 32-bit number is deprecated.  */
    public let OriginalPrice_DEPRECATED: Int

    /** The current price including discounts of this offer as a 32-bit number is deprecated..  */
    public let CurrentPrice_DEPRECATED: Int

    /** A value from 0 to 100 define the percentage of the OrignalPrice that the CurrentPrice represents  */
    public let DiscountPercentage: UInt8

    /** Contains the POSIX timestamp that the offer expires or -1 if it does not expire  */
    public let ExpirationTimestamp: Int

    /** The number of times that the requesting account has purchased this offer.  */
    public let PurchasedCount: Int

    /**
     * The maximum number of times that the offer can be purchased.
     * A negative value implies there is no limit.
     */
    public let PurchaseLimit: Int

    /** True if the user can purchase this offer.  */
    public let bAvailableForPurchase: Bool

    /** The original price of this offer as a 64-bit number.  */
    public let OriginalPrice64: UInt64

    /** The current price including discounts of this offer as a 64-bit number.  */
    public let CurrentPrice64: UInt64

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CatalogOffer {
        try _tagEOS_Ecom_CatalogOffer(
            ApiVersion: ApiVersion,
            ServerIndex: try safeNumericCast(exactly: ServerIndex),
            CatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: CatalogNamespace?.utf8CString),
            Id: pointerManager.managedMutablePointerToBuffer(copyingArray: Id?.utf8CString),
            TitleText: pointerManager.managedPointerToBuffer(copyingArray: TitleText?.utf8CString),
            DescriptionText: pointerManager.managedPointerToBuffer(copyingArray: DescriptionText?.utf8CString),
            LongDescriptionText: pointerManager.managedPointerToBuffer(copyingArray: LongDescriptionText?.utf8CString),
            TechnicalDetailsText_DEPRECATED: pointerManager.managedPointerToBuffer(copyingArray: TechnicalDetailsText_DEPRECATED?.utf8CString),
            CurrencyCode: pointerManager.managedPointerToBuffer(copyingArray: CurrencyCode?.utf8CString),
            PriceResult: PriceResult,
            OriginalPrice_DEPRECATED: try safeNumericCast(exactly: OriginalPrice_DEPRECATED),
            CurrentPrice_DEPRECATED: try safeNumericCast(exactly: CurrentPrice_DEPRECATED),
            DiscountPercentage: DiscountPercentage,
            ExpirationTimestamp: try safeNumericCast(exactly: ExpirationTimestamp),
            PurchasedCount: try safeNumericCast(exactly: PurchasedCount),
            PurchaseLimit: try safeNumericCast(exactly: PurchaseLimit),
            bAvailableForPurchase: eosBoolFromSwiftBool(bAvailableForPurchase),
            OriginalPrice64: OriginalPrice64,
            CurrentPrice64: CurrentPrice64
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CatalogOffer?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ServerIndex = try safeNumericCast(exactly: sdkObject.ServerIndex)
        self.CatalogNamespace = String(cString: sdkObject.CatalogNamespace)
        self.Id = String(cString: sdkObject.Id)
        self.TitleText = String(cString: sdkObject.TitleText)
        self.DescriptionText = String(cString: sdkObject.DescriptionText)
        self.LongDescriptionText = String(cString: sdkObject.LongDescriptionText)
        self.TechnicalDetailsText_DEPRECATED = String(cString: sdkObject.TechnicalDetailsText_DEPRECATED)
        self.CurrencyCode = String(cString: sdkObject.CurrencyCode)
        self.PriceResult = sdkObject.PriceResult
        self.OriginalPrice_DEPRECATED = try safeNumericCast(exactly: sdkObject.OriginalPrice_DEPRECATED)
        self.CurrentPrice_DEPRECATED = try safeNumericCast(exactly: sdkObject.CurrentPrice_DEPRECATED)
        self.DiscountPercentage = sdkObject.DiscountPercentage
        self.ExpirationTimestamp = try safeNumericCast(exactly: sdkObject.ExpirationTimestamp)
        self.PurchasedCount = try safeNumericCast(exactly: sdkObject.PurchasedCount)
        self.PurchaseLimit = try safeNumericCast(exactly: sdkObject.PurchaseLimit)
        self.bAvailableForPurchase = try swiftBoolFromEosBool(sdkObject.bAvailableForPurchase)
        self.OriginalPrice64 = sdkObject.OriginalPrice64
        self.CurrentPrice64 = sdkObject.CurrentPrice64
    }
}

/**
 * Contains information about a single release within the catalog. Instances of this structure are
 * created by EOS_Ecom_CopyItemReleaseByIndex. They must be passed to EOS_Ecom_CatalogRelease_Release.
 * 
 * - see: release func: EOS_Ecom_CatalogRelease_Release
 */
public struct SwiftEOS_Ecom_CatalogRelease: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_CATALOGRELEASE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The number of APP IDs 
     * - array buffer: CompatibleAppIds
     */
    public let CompatibleAppIdCount: Int

    /**
     * A list of compatible APP IDs 
     * - array num: CompatibleAppIdCount
     */
    public let CompatibleAppIds: [String]?

    /**
     * The number of platforms 
     * - array buffer: CompatiblePlatforms
     */
    public let CompatiblePlatformCount: Int

    /**
     * A list of compatible Platforms 
     * - array num: CompatiblePlatformCount
     */
    public let CompatiblePlatforms: [String]?

    /** Release note for compatible versions  */
    public let ReleaseNote: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CatalogRelease {
        try _tagEOS_Ecom_CatalogRelease(
            ApiVersion: ApiVersion,
            CompatibleAppIdCount: try safeNumericCast(exactly: CompatibleAppIdCount),
            CompatibleAppIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CompatibleAppIds?.map { 
                    $0.utf8CString }),
            CompatiblePlatformCount: try safeNumericCast(exactly: CompatiblePlatformCount),
            CompatiblePlatforms: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CompatiblePlatforms?.map { 
                    $0.utf8CString }),
            ReleaseNote: pointerManager.managedPointerToBuffer(copyingArray: ReleaseNote?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CatalogRelease?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.CompatibleAppIdCount = try safeNumericCast(exactly: sdkObject.CompatibleAppIdCount)
        self.CompatibleAppIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CompatibleAppIds,
            count: sdkObject.CompatibleAppIdCount
        )
        self.CompatiblePlatformCount = try safeNumericCast(exactly: sdkObject.CompatiblePlatformCount)
        self.CompatiblePlatforms = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CompatiblePlatforms,
            count: sdkObject.CompatiblePlatformCount
        )
        self.ReleaseNote = String(cString: sdkObject.ReleaseNote)
    }
}

/** Output parameters for the EOS_Ecom_Checkout Function. */
public struct SwiftEOS_Ecom_CheckoutCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who initiated the purchase  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The transaction ID which can be used to obtain an EOS_Ecom_HTransaction using EOS_Ecom_CopyTransactionById.  */
    public let TransactionId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CheckoutCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.TransactionId = String(cString: sdkObject.TransactionId)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_CheckoutCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/**
 * Contains information about a request to purchase a single offer.  This structure is set as part
 * of the EOS_Ecom_CheckoutOptions structure.
 */
public struct SwiftEOS_Ecom_CheckoutEntry: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_CHECKOUTENTRY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ID of the offer to purchase  */
    public let OfferId: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CheckoutEntry?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.OfferId = String(cString: sdkObject.OfferId)
    }

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CheckoutEntry {
        _tagEOS_Ecom_CheckoutEntry(
            ApiVersion: ApiVersion,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CHECKOUTENTRY_API_LATEST,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.OfferId = OfferId
    }
}

/** Input parameters for the EOS_Ecom_Checkout function. */
public struct SwiftEOS_Ecom_CheckoutOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_CHECKOUT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is making the purchase  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The catalog namespace will be the current Sandbox ID (in EOS_Platform_Options) unless overridden by this field  */
    public let OverrideCatalogNamespace: String?

    /** The number of EOS_Ecom_CheckoutEntry elements contained in Entries  */
    public let EntryCount: Int

    /** An array of EOS_Ecom_CheckoutEntry elements, each containing the details of a single offer  */
    public let Entries: SwiftEOS_Ecom_CheckoutEntry?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CheckoutOptions {
        try _tagEOS_Ecom_CheckoutOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OverrideCatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: OverrideCatalogNamespace?.utf8CString),
            EntryCount: try safeNumericCast(exactly: EntryCount),
            Entries: try pointerManager.managedPointer(copyingValueOrNilPointer: Entries?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CheckoutOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OverrideCatalogNamespace = String(cString: sdkObject.OverrideCatalogNamespace)
        self.EntryCount = try safeNumericCast(exactly: sdkObject.EntryCount)
        self.Entries = try SwiftEOS_Ecom_CheckoutEntry.init(sdkObject: sdkObject.Entries.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CHECKOUT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OverrideCatalogNamespace: String?,
        EntryCount: Int,
        Entries: SwiftEOS_Ecom_CheckoutEntry?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OverrideCatalogNamespace = OverrideCatalogNamespace
        self.EntryCount = EntryCount
        self.Entries = Entries
    }
}

/** Input parameters for the EOS_Ecom_CopyEntitlementById function. */
public struct SwiftEOS_Ecom_CopyEntitlementByIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose entitlement is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** ID of the entitlement to retrieve from the cache  */
    public let EntitlementId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyEntitlementByIdOptions {
        _tagEOS_Ecom_CopyEntitlementByIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementId: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyEntitlementByIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementId = String(cString: sdkObject.EntitlementId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYENTITLEMENTBYID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementId = EntitlementId
    }
}

/** Input parameters for the EOS_Ecom_CopyEntitlementByIndex function. */
public struct SwiftEOS_Ecom_CopyEntitlementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose entitlement is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Index of the entitlement to retrieve from the cache  */
    public let EntitlementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyEntitlementByIndexOptions {
        try _tagEOS_Ecom_CopyEntitlementByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementIndex: try safeNumericCast(exactly: EntitlementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyEntitlementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementIndex = try safeNumericCast(exactly: sdkObject.EntitlementIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYENTITLEMENTBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementIndex = EntitlementIndex
    }
}

/** Input parameters for the EOS_Ecom_CopyEntitlementByNameAndIndex function. */
public struct SwiftEOS_Ecom_CopyEntitlementByNameAndIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose entitlement is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Name of the entitlement to retrieve from the cache  */
    public let EntitlementName: String?

    /** Index of the entitlement within the named set to retrieve from the cache.  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions {
        try _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString),
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementName: String?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementName = EntitlementName
        self.Index = Index
    }
}

/** Input parameters for the EOS_Ecom_CopyItemById function. */
public struct SwiftEOS_Ecom_CopyItemByIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYITEMBYID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the item to get.  */
    public let ItemId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyItemByIdOptions {
        _tagEOS_Ecom_CopyItemByIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: ItemId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyItemByIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemId = String(cString: sdkObject.ItemId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYITEMBYID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ItemId = ItemId
    }
}

/** Input parameters for the EOS_Ecom_CopyItemImageInfoByIndex function. */
public struct SwiftEOS_Ecom_CopyItemImageInfoByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYITEMIMAGEINFOBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item image is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the item to get the images for.  */
    public let ItemId: String?

    /** The index of the image to get.  */
    public let ImageInfoIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyItemImageInfoByIndexOptions {
        try _tagEOS_Ecom_CopyItemImageInfoByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: ItemId?.utf8CString),
            ImageInfoIndex: try safeNumericCast(exactly: ImageInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyItemImageInfoByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemId = String(cString: sdkObject.ItemId)
        self.ImageInfoIndex = try safeNumericCast(exactly: sdkObject.ImageInfoIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYITEMIMAGEINFOBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?,
        ImageInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ItemId = ItemId
        self.ImageInfoIndex = ImageInfoIndex
    }
}

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

/** Input parameters for the EOS_Ecom_CopyOfferById function. */
public struct SwiftEOS_Ecom_CopyOfferByIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYOFFERBYID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get.  */
    public let OfferId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyOfferByIdOptions {
        _tagEOS_Ecom_CopyOfferByIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyOfferByIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYOFFERBYID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
    }
}

/** Input parameters for the EOS_Ecom_CopyOfferByIndex function. */
public struct SwiftEOS_Ecom_CopyOfferByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYOFFERBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The index of the offer to get.  */
    public let OfferIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyOfferByIndexOptions {
        try _tagEOS_Ecom_CopyOfferByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferIndex: try safeNumericCast(exactly: OfferIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyOfferByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferIndex = try safeNumericCast(exactly: sdkObject.OfferIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYOFFERBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferIndex = OfferIndex
    }
}

/** Input parameters for the EOS_Ecom_CopyOfferImageInfoByIndex function. */
public struct SwiftEOS_Ecom_CopyOfferImageInfoByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer image is being copied.  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get the images for.  */
    public let OfferId: String?

    /** The index of the image to get.  */
    public let ImageInfoIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions {
        try _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString),
            ImageInfoIndex: try safeNumericCast(exactly: ImageInfoIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
        self.ImageInfoIndex = try safeNumericCast(exactly: sdkObject.ImageInfoIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?,
        ImageInfoIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
        self.ImageInfoIndex = ImageInfoIndex
    }
}

/** Input parameters for the EOS_Ecom_CopyOfferItemByIndex function. */
public struct SwiftEOS_Ecom_CopyOfferItemByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item is being copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get the items for.  */
    public let OfferId: String?

    /** The index of the item to get.  */
    public let ItemIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
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

/** Input parameters for the EOS_Ecom_CopyTransactionById function. */
public struct SwiftEOS_Ecom_CopyTransactionByIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYTRANSACTIONBYID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is associated with the transaction  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the transaction to get  */
    public let TransactionId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyTransactionByIdOptions {
        _tagEOS_Ecom_CopyTransactionByIdOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TransactionId: pointerManager.managedPointerToBuffer(copyingArray: TransactionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyTransactionByIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TransactionId = String(cString: sdkObject.TransactionId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYTRANSACTIONBYID_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TransactionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TransactionId = TransactionId
    }
}

/** Input parameters for the EOS_Ecom_CopyTransactionByIndex function. */
public struct SwiftEOS_Ecom_CopyTransactionByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is associated with the transaction  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The index of the transaction to get  */
    public let TransactionIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CopyTransactionByIndexOptions {
        try _tagEOS_Ecom_CopyTransactionByIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            TransactionIndex: try safeNumericCast(exactly: TransactionIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_CopyTransactionByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.TransactionIndex = try safeNumericCast(exactly: sdkObject.TransactionIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        TransactionIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.TransactionIndex = TransactionIndex
    }
}

/**
 * Contains information about a single entitlement associated with an account. Instances of this structure are
 * created by EOS_Ecom_CopyEntitlementByIndex, EOS_Ecom_CopyEntitlementByNameAndIndex, or EOS_Ecom_CopyEntitlementById.
 * They must be passed to EOS_Ecom_Entitlement_Release.
 * 
 * - see: release func: EOS_Ecom_Entitlement_Release
 */
public struct SwiftEOS_Ecom_Entitlement: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_ENTITLEMENT_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the entitlement  */
    public let EntitlementName: String?

    /** ID of the entitlement owned by an account  */
    public let EntitlementId: String?

    /** ID of the item associated with the offer which granted this entitlement  */
    public let CatalogItemId: String?

    /**
     * If queried using pagination then ServerIndex represents the index of the entitlement as it
     * exists on the server.  If not queried using pagination then ServerIndex will be -1.
     */
    public let ServerIndex: Int

    /** If true then the catalog has this entitlement marked as redeemed  */
    public let bRedeemed: Bool

    /** If not -1 then this is a POSIX timestamp that this entitlement will end  */
    public let EndTimestamp: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_Entitlement {
        try _tagEOS_Ecom_Entitlement(
            ApiVersion: ApiVersion,
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString),
            EntitlementId: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementId?.utf8CString),
            CatalogItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: CatalogItemId?.utf8CString),
            ServerIndex: try safeNumericCast(exactly: ServerIndex),
            bRedeemed: eosBoolFromSwiftBool(bRedeemed),
            EndTimestamp: try safeNumericCast(exactly: EndTimestamp)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_Entitlement?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
        self.EntitlementId = String(cString: sdkObject.EntitlementId)
        self.CatalogItemId = String(cString: sdkObject.CatalogItemId)
        self.ServerIndex = try safeNumericCast(exactly: sdkObject.ServerIndex)
        self.bRedeemed = try swiftBoolFromEosBool(sdkObject.bRedeemed)
        self.EndTimestamp = try safeNumericCast(exactly: sdkObject.EndTimestamp)
    }
}

/** Input parameters for the EOS_Ecom_GetEntitlementsByNameCount function. */
public struct SwiftEOS_Ecom_GetEntitlementsByNameCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETENTITLEMENTSBYNAMECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user for which to retrieve the entitlement count  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Name of the entitlement to count in the cache  */
    public let EntitlementName: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetEntitlementsByNameCountOptions {
        _tagEOS_Ecom_GetEntitlementsByNameCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementName: pointerManager.managedMutablePointerToBuffer(copyingArray: EntitlementName?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetEntitlementsByNameCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementName = String(cString: sdkObject.EntitlementName)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETENTITLEMENTSBYNAMECOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementName: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementName = EntitlementName
    }
}

/** Input parameters for the EOS_Ecom_GetEntitlementsCount function. */
public struct SwiftEOS_Ecom_GetEntitlementsCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETENTITLEMENTSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user for which to retrieve the entitlement count  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetEntitlementsCountOptions {
        _tagEOS_Ecom_GetEntitlementsCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetEntitlementsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETENTITLEMENTSCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Ecom_GetItemImageInfoCount function. */
public struct SwiftEOS_Ecom_GetItemImageInfoCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETITEMIMAGEINFOCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item image is being accessed  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the item to get the images for.  */
    public let ItemId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
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

/** Input parameters for the EOS_Ecom_GetItemReleaseCount function. */
public struct SwiftEOS_Ecom_GetItemReleaseCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETITEMRELEASECOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose item release is being accessed  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the item to get the releases for.  */
    public let ItemId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetItemReleaseCountOptions {
        _tagEOS_Ecom_GetItemReleaseCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ItemId: pointerManager.managedMutablePointerToBuffer(copyingArray: ItemId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetItemReleaseCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemId = String(cString: sdkObject.ItemId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETITEMRELEASECOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        ItemId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ItemId = ItemId
    }
}

/** Input parameters for the EOS_Ecom_GetOfferCount function. */
public struct SwiftEOS_Ecom_GetOfferCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETOFFERCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offers are being accessed  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetOfferCountOptions {
        _tagEOS_Ecom_GetOfferCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetOfferCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETOFFERCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input parameters for the EOS_Ecom_GetOfferImageInfoCount function. */
public struct SwiftEOS_Ecom_GetOfferImageInfoCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETOFFERIMAGEINFOCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer image is being accessed.  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The ID of the offer to get the images for.  */
    public let OfferId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetOfferImageInfoCountOptions {
        _tagEOS_Ecom_GetOfferImageInfoCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetOfferImageInfoCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETOFFERIMAGEINFOCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
    }
}

/** Input parameters for the EOS_Ecom_GetOfferItemCount function. */
public struct SwiftEOS_Ecom_GetOfferItemCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who made the initial request for the Catalog Offer through EOS_Ecom_QueryOffers  */
    public let LocalUserId: EOS_EpicAccountId?

    /** An ID that corresponds to a cached Catalog Offer (retrieved by EOS_Ecom_CopyOfferByIndex)  */
    public let OfferId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetOfferItemCountOptions {
        _tagEOS_Ecom_GetOfferItemCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OfferId: pointerManager.managedMutablePointerToBuffer(copyingArray: OfferId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetOfferItemCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OfferId = String(cString: sdkObject.OfferId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OfferId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OfferId = OfferId
    }
}

/** Input parameters for the EOS_Ecom_GetTransactionCount function. */
public struct SwiftEOS_Ecom_GetTransactionCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_GETTRANSACTIONCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose transaction count to get  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_GetTransactionCountOptions {
        _tagEOS_Ecom_GetTransactionCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_GetTransactionCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_GETTRANSACTIONCOUNT_API_LATEST,
        LocalUserId: EOS_EpicAccountId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/**
 * Contains information about a single item ownership associated with an account. This structure is
 * returned as part of the EOS_Ecom_QueryOwnershipCallbackInfo structure.
 */
public struct SwiftEOS_Ecom_ItemOwnership {

    /** API Version: Set this to EOS_ECOM_ITEMOWNERSHIP_API_LATEST.  */
    public let ApiVersion: Int32

    /** ID of the catalog item  */
    public let Id: String?

    /** Is this catalog item owned by the local user  */
    public let OwnershipStatus: EOS_EOwnershipStatus

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_ItemOwnership?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Id = String(cString: sdkObject.Id)
        self.OwnershipStatus = sdkObject.OwnershipStatus
    }
}

/**
 * Contains information about a key image used by the catalog.  Instances of this structure are
 * created by EOS_Ecom_CopyItemImageInfoByIndex.  They must be passed to EOS_Ecom_KeyImageInfo_Release.
 * A Key Image is defined within Dev Portal and is associated with a Catalog Item.  A Key Image is
 * intended to be used to provide imagery for an in-game store.
 * 
 * @see EOS_Ecom_CopyItemImageInfoByIndex
 * @see EOS_Ecom_KeyImageInfo_Release
 * 
 * - see: release func: EOS_Ecom_KeyImageInfo_Release
 */
public struct SwiftEOS_Ecom_KeyImageInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_KEYIMAGEINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** Describes the usage of the image (ex: home_thumbnail)  */
    public let `Type`: String?

    /** The URL of the image  */
    public let Url: String?

    /** The expected width in pixels of the image  */
    public let Width: Int

    /** The expected height in pixels of the image  */
    public let Height: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_KeyImageInfo {
        try _tagEOS_Ecom_KeyImageInfo(
            ApiVersion: ApiVersion,
            `Type`: pointerManager.managedPointerToBuffer(copyingArray: `Type`?.utf8CString),
            Url: pointerManager.managedPointerToBuffer(copyingArray: Url?.utf8CString),
            Width: try safeNumericCast(exactly: Width),
            Height: try safeNumericCast(exactly: Height)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_KeyImageInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.`Type` = String(cString: sdkObject.`Type`)
        self.Url = String(cString: sdkObject.Url)
        self.Width = try safeNumericCast(exactly: sdkObject.Width)
        self.Height = try safeNumericCast(exactly: sdkObject.Height)
    }
}

/** Output parameters for the EOS_Ecom_QueryEntitlements Function. */
public struct SwiftEOS_Ecom_QueryEntitlementsCallbackInfo {
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose entitlement was queried  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryEntitlementsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_QueryEntitlementsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Ecom_QueryEntitlements function. */
public struct SwiftEOS_Ecom_QueryEntitlementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYENTITLEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose Entitlements you want to retrieve  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * An array of Entitlement Names that you want to check 
     * - array num: EntitlementNameCount
     */
    public let EntitlementNames: [String]?

    /**
     * The number of Entitlement Names included in the array, up to EOS_ECOM_QUERYENTITLEMENTS_MAX_ENTITLEMENT_IDS; use zero to request all Entitlements associated with the user's Epic Online Services account. 
     * - array buffer: EntitlementNames
     */
    public let EntitlementNameCount: Int

    /** If true, Entitlements that have been redeemed will be included in the results.  */
    public let bIncludeRedeemed: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryEntitlementsOptions {
        try _tagEOS_Ecom_QueryEntitlementsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementNames: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: EntitlementNames?.map { 
                    $0.utf8CString }),
            EntitlementNameCount: try safeNumericCast(exactly: EntitlementNameCount),
            bIncludeRedeemed: eosBoolFromSwiftBool(bIncludeRedeemed)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryEntitlementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementNames = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.EntitlementNames,
            count: sdkObject.EntitlementNameCount
        )
        self.EntitlementNameCount = try safeNumericCast(exactly: sdkObject.EntitlementNameCount)
        self.bIncludeRedeemed = try swiftBoolFromEosBool(sdkObject.bIncludeRedeemed)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYENTITLEMENTS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementNames: [String]?,
        EntitlementNameCount: Int,
        bIncludeRedeemed: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementNames = EntitlementNames
        self.EntitlementNameCount = EntitlementNameCount
        self.bIncludeRedeemed = bIncludeRedeemed
    }
}

/** Output parameters for the EOS_Ecom_QueryOffers Function. */
public struct SwiftEOS_Ecom_QueryOffersCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose offer was queried; needed for localization of Catalog Item (Item) description text and pricing information  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOffersCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_QueryOffersCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Ecom_QueryOffers function. */
public struct SwiftEOS_Ecom_QueryOffersOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYOFFERS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose offer to query  */
    public let LocalUserId: EOS_EpicAccountId?

    /** If not provided then the SandboxId is used as the catalog namespace  */
    public let OverrideCatalogNamespace: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryOffersOptions {
        _tagEOS_Ecom_QueryOffersOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            OverrideCatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: OverrideCatalogNamespace?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOffersOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.OverrideCatalogNamespace = String(cString: sdkObject.OverrideCatalogNamespace)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYOFFERS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        OverrideCatalogNamespace: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.OverrideCatalogNamespace = OverrideCatalogNamespace
    }
}

/** Output parameters for the EOS_Ecom_QueryOwnership Function. */
public struct SwiftEOS_Ecom_QueryOwnershipCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose ownership was queried  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * List of catalog items and their ownership status 
     * - array num: ItemOwnershipCount
     */
    public let ItemOwnership: [SwiftEOS_Ecom_ItemOwnership]?

    /**
     * Number of ownership results are included in this callback 
     * - array buffer: ItemOwnership
     */
    public let ItemOwnershipCount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.ItemOwnership = try sdkObject.ItemOwnership.array(safeNumericCast(exactly: sdkObject.ItemOwnershipCount)).compactMap { 
            try SwiftEOS_Ecom_ItemOwnership.init(sdkObject: $0.pointee) }
        self.ItemOwnershipCount = try safeNumericCast(exactly: sdkObject.ItemOwnershipCount)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_QueryOwnershipCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Ecom_QueryOwnership function. */
public struct SwiftEOS_Ecom_QueryOwnershipOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYOWNERSHIP_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose ownership to query  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * The array of Catalog Item IDs to check for ownership 
     * - array num: CatalogItemIdCount
     */
    public let CatalogItemIds: [String]?

    /**
     * The number of Catalog Item IDs to in the array 
     * - array buffer: CatalogItemIds
     */
    public let CatalogItemIdCount: Int

    /** Optional product namespace, if not the one specified during initialization  */
    public let CatalogNamespace: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryOwnershipOptions {
        try _tagEOS_Ecom_QueryOwnershipOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            CatalogItemIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CatalogItemIds?.map { 
                    $0.utf8CString }),
            CatalogItemIdCount: try safeNumericCast(exactly: CatalogItemIdCount),
            CatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: CatalogNamespace?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.CatalogItemIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CatalogItemIds,
            count: sdkObject.CatalogItemIdCount
        )
        self.CatalogItemIdCount = try safeNumericCast(exactly: sdkObject.CatalogItemIdCount)
        self.CatalogNamespace = String(cString: sdkObject.CatalogNamespace)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYOWNERSHIP_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        CatalogItemIds: [String]?,
        CatalogItemIdCount: Int,
        CatalogNamespace: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.CatalogItemIds = CatalogItemIds
        self.CatalogItemIdCount = CatalogItemIdCount
        self.CatalogNamespace = CatalogNamespace
    }
}

/** Output parameters for the EOS_Ecom_QueryOwnershipToken Function. */
public struct SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo {

    /** The EOS_EResult code for the operation. EOS_Success indicates that the operation succeeded; other codes indicate errors.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the local user whose ownership token was queried  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Ownership token containing details about the catalog items queried  */
    public let OwnershipToken: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipTokenCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.OwnershipToken = String(cString: sdkObject.OwnershipToken)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_QueryOwnershipTokenCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Ecom_QueryOwnershipToken function. */
public struct SwiftEOS_Ecom_QueryOwnershipTokenOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_QUERYOWNERSHIPTOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user whose ownership token you want to query  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * The array of Catalog Item IDs to check for ownership, matching in number to the CatalogItemIdCount 
     * - array num: CatalogItemIdCount
     */
    public let CatalogItemIds: [String]?

    /**
     * The number of catalog item IDs to query 
     * - array buffer: CatalogItemIds
     */
    public let CatalogItemIdCount: Int

    /** Optional product namespace, if not the one specified during initialization  */
    public let CatalogNamespace: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_QueryOwnershipTokenOptions {
        try _tagEOS_Ecom_QueryOwnershipTokenOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            CatalogItemIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CatalogItemIds?.map { 
                    $0.utf8CString }),
            CatalogItemIdCount: try safeNumericCast(exactly: CatalogItemIdCount),
            CatalogNamespace: pointerManager.managedPointerToBuffer(copyingArray: CatalogNamespace?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_QueryOwnershipTokenOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.CatalogItemIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CatalogItemIds,
            count: sdkObject.CatalogItemIdCount
        )
        self.CatalogItemIdCount = try safeNumericCast(exactly: sdkObject.CatalogItemIdCount)
        self.CatalogNamespace = String(cString: sdkObject.CatalogNamespace)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_QUERYOWNERSHIPTOKEN_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        CatalogItemIds: [String]?,
        CatalogItemIdCount: Int,
        CatalogNamespace: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.CatalogItemIds = CatalogItemIds
        self.CatalogItemIdCount = CatalogItemIdCount
        self.CatalogNamespace = CatalogNamespace
    }
}

/** Output parameters for the EOS_Ecom_RedeemEntitlements Function. */
public struct SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, otherwise one of the error codes is returned. See eos_common.h  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user who has redeemed entitlements  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_RedeemEntitlementsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Ecom_RedeemEntitlementsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Ecom_RedeemEntitlements function. */
public struct SwiftEOS_Ecom_RedeemEntitlementsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_REDEEMENTITLEMENTS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user who is redeeming Entitlements  */
    public let LocalUserId: EOS_EpicAccountId?

    /**
     * The number of Entitlements to redeem 
     * - array buffer: EntitlementIds
     */
    public let EntitlementIdCount: Int

    /**
     * The array of Entitlements to redeem 
     * - array num: EntitlementIdCount
     */
    public let EntitlementIds: [String]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_RedeemEntitlementsOptions {
        try _tagEOS_Ecom_RedeemEntitlementsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EntitlementIdCount: try safeNumericCast(exactly: EntitlementIdCount),
            EntitlementIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: EntitlementIds?.map { 
                    $0.utf8CString })
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_RedeemEntitlementsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EntitlementIdCount = try safeNumericCast(exactly: sdkObject.EntitlementIdCount)
        self.EntitlementIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.EntitlementIds,
            count: sdkObject.EntitlementIdCount
        )
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_REDEEMENTITLEMENTS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        EntitlementIdCount: Int,
        EntitlementIds: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EntitlementIdCount = EntitlementIdCount
        self.EntitlementIds = EntitlementIds
    }
}

/** Input parameters for the EOS_Ecom_Transaction_CopyEntitlementByIndex function. */
public struct SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_TRANSACTION_COPYENTITLEMENTBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /** The index of the entitlement to get  */
    public let EntitlementIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions {
        try _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions(
            ApiVersion: ApiVersion,
            EntitlementIndex: try safeNumericCast(exactly: EntitlementIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.EntitlementIndex = try safeNumericCast(exactly: sdkObject.EntitlementIndex)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_TRANSACTION_COPYENTITLEMENTBYINDEX_API_LATEST,
        EntitlementIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.EntitlementIndex = EntitlementIndex
    }
}

/** Input parameters for the EOS_Ecom_Transaction_GetEntitlementsCount function. */
public struct SwiftEOS_Ecom_Transaction_GetEntitlementsCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_TRANSACTION_GETENTITLEMENTSCOUNT_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions {
        _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_TRANSACTION_GETENTITLEMENTSCOUNT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
