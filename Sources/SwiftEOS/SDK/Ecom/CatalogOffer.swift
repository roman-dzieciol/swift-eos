import Foundation
import EOSSDK

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

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ECOM_CATALOGOFFER_API_LATEST. 
     * - Parameter ServerIndex:  The index of this offer as it exists on the server.
     * This is useful for understanding pagination data.
     * - Parameter CatalogNamespace:  Product namespace in which this offer exists 
     * - Parameter Id:  The ID of this offer 
     * - Parameter TitleText:  Localized UTF-8 title of this offer 
     * - Parameter DescriptionText:  Localized UTF-8 description of this offer 
     * - Parameter LongDescriptionText:  Localized UTF-8 long description of this offer 
     * - Parameter TechnicalDetailsText_DEPRECATED:  Deprecated.
     * EOS_Ecom_CatalogOffer::TechnicalDetailsText has been deprecated.
     * EOS_Ecom_CatalogItem::TechnicalDetailsText is still valid.
     * - Parameter CurrencyCode:  The Currency Code for this offer 
     * - Parameter PriceResult:  If this value is EOS_Success then OriginalPrice, CurrentPrice, and DiscountPercentage contain valid data.
     * Otherwise this value represents the error that occurred on the price query.
     * - Parameter OriginalPrice_DEPRECATED:  The original price of this offer as a 32-bit number is deprecated. 
     * - Parameter CurrentPrice_DEPRECATED:  The current price including discounts of this offer as a 32-bit number is deprecated.. 
     * - Parameter DiscountPercentage:  A value from 0 to 100 define the percentage of the OrignalPrice that the CurrentPrice represents 
     * - Parameter ExpirationTimestamp:  Contains the POSIX timestamp that the offer expires or -1 if it does not expire 
     * - Parameter PurchasedCount:  The number of times that the requesting account has purchased this offer. 
     * - Parameter PurchaseLimit:  The maximum number of times that the offer can be purchased.
     * A negative value implies there is no limit.
     * - Parameter bAvailableForPurchase:  True if the user can purchase this offer. 
     * - Parameter OriginalPrice64:  The original price of this offer as a 64-bit number. 
     * - Parameter CurrentPrice64:  The current price including discounts of this offer as a 64-bit number. 
     */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CATALOGOFFER_API_LATEST,
        ServerIndex: Int,
        CatalogNamespace: String?,
        Id: String?,
        TitleText: String?,
        DescriptionText: String?,
        LongDescriptionText: String?,
        TechnicalDetailsText_DEPRECATED: String?,
        CurrencyCode: String?,
        PriceResult: EOS_EResult,
        OriginalPrice_DEPRECATED: Int,
        CurrentPrice_DEPRECATED: Int,
        DiscountPercentage: UInt8,
        ExpirationTimestamp: Int,
        PurchasedCount: Int,
        PurchaseLimit: Int,
        bAvailableForPurchase: Bool,
        OriginalPrice64: UInt64,
        CurrentPrice64: UInt64
    ) {
        self.ApiVersion = ApiVersion
        self.ServerIndex = ServerIndex
        self.CatalogNamespace = CatalogNamespace
        self.Id = Id
        self.TitleText = TitleText
        self.DescriptionText = DescriptionText
        self.LongDescriptionText = LongDescriptionText
        self.TechnicalDetailsText_DEPRECATED = TechnicalDetailsText_DEPRECATED
        self.CurrencyCode = CurrencyCode
        self.PriceResult = PriceResult
        self.OriginalPrice_DEPRECATED = OriginalPrice_DEPRECATED
        self.CurrentPrice_DEPRECATED = CurrentPrice_DEPRECATED
        self.DiscountPercentage = DiscountPercentage
        self.ExpirationTimestamp = ExpirationTimestamp
        self.PurchasedCount = PurchasedCount
        self.PurchaseLimit = PurchaseLimit
        self.bAvailableForPurchase = bAvailableForPurchase
        self.OriginalPrice64 = OriginalPrice64
        self.CurrentPrice64 = CurrentPrice64
    }
}
