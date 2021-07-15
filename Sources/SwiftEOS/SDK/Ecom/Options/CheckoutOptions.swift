import Foundation
import EOSSDK


/** Input parameters for the `EOS_Ecom_Checkout` function. */
public struct SwiftEOS_Ecom_CheckoutOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_CHECKOUT_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the local user who is making the purchase */
    public let LocalUserId: EOS_EpicAccountId?

    /** The catalog namespace will be the current Sandbox ID (in `EOS_Platform_Options`) unless overridden by this field */
    public let OverrideCatalogNamespace: String?

    /** The number of `EOS_Ecom_CheckoutEntry` elements contained in Entries */
    public let EntryCount: Int

    /** An array of `EOS_Ecom_CheckoutEntry` elements, each containing the details of a single offer */
    public let Entries: SwiftEOS_Ecom_CheckoutEntry?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
        self.OverrideCatalogNamespace = stringFromOptionalCStringPointer(sdkObject.OverrideCatalogNamespace)
        self.EntryCount = try safeNumericCast(exactly: sdkObject.EntryCount)
        self.Entries = try SwiftEOS_Ecom_CheckoutEntry.init(sdkObject: sdkObject.Entries?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_CHECKOUT_API_LATEST`.
    - Parameter LocalUserId: The Epic Online Services Account ID of the local user who is making the purchase
    - Parameter OverrideCatalogNamespace: The catalog namespace will be the current Sandbox ID (in `EOS_Platform_Options`) unless overridden by this field
    - Parameter EntryCount: The number of `EOS_Ecom_CheckoutEntry` elements contained in Entries
    - Parameter Entries: An array of `EOS_Ecom_CheckoutEntry` elements, each containing the details of a single offer
    */
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
