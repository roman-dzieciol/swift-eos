import Foundation
import EOSSDK

/**
Contains information about a single item within the catalog. Instances of this structure are created
by `EOS_Ecom_CopyOfferItemByIndex`. They must be passed to `EOS_Ecom_CatalogItem_Release`.

- Note: Release func: ```EOS_Ecom_CatalogItem_Release```
*/
public struct SwiftEOS_Ecom_CatalogItem: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_CATALOGITEM_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product namespace in which this item exists */
    public let CatalogNamespace: String?

    /** The ID of this item */
    public let Id: String?

    /** The entitlement name associated with this item */
    public let EntitlementName: String?

    /** Localized UTF-8 title of this item */
    public let TitleText: String?

    /** Localized UTF-8 description of this item */
    public let DescriptionText: String?

    /** Localized UTF-8 long description of this item */
    public let LongDescriptionText: String?

    /** Localized UTF-8 technical details of this item */
    public let TechnicalDetailsText: String?

    /** Localized UTF-8 developer of this item */
    public let DeveloperText: String?

    /** The type of item as defined in the catalog */
    public let ItemType: EOS_EEcomItemType

    /** If not -1 then this is the POSIX timestamp that the entitlement will end */
    public let EntitlementEndTimestamp: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_CATALOGITEM_API_LATEST`.
    - Parameter CatalogNamespace: Product namespace in which this item exists
    - Parameter Id: The ID of this item
    - Parameter EntitlementName: The entitlement name associated with this item
    - Parameter TitleText: Localized UTF-8 title of this item
    - Parameter DescriptionText: Localized UTF-8 description of this item
    - Parameter LongDescriptionText: Localized UTF-8 long description of this item
    - Parameter TechnicalDetailsText: Localized UTF-8 technical details of this item
    - Parameter DeveloperText: Localized UTF-8 developer of this item
    - Parameter ItemType: The type of item as defined in the catalog
    - Parameter EntitlementEndTimestamp: If not -1 then this is the POSIX timestamp that the entitlement will end
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CATALOGITEM_API_LATEST,
        CatalogNamespace: String?,
        Id: String?,
        EntitlementName: String?,
        TitleText: String?,
        DescriptionText: String?,
        LongDescriptionText: String?,
        TechnicalDetailsText: String?,
        DeveloperText: String?,
        ItemType: EOS_EEcomItemType,
        EntitlementEndTimestamp: Int
    ) {
        self.ApiVersion = ApiVersion
        self.CatalogNamespace = CatalogNamespace
        self.Id = Id
        self.EntitlementName = EntitlementName
        self.TitleText = TitleText
        self.DescriptionText = DescriptionText
        self.LongDescriptionText = LongDescriptionText
        self.TechnicalDetailsText = TechnicalDetailsText
        self.DeveloperText = DeveloperText
        self.ItemType = ItemType
        self.EntitlementEndTimestamp = EntitlementEndTimestamp
    }
}
