import Foundation
import EOSSDK

/**
Contains information about a key image used by the catalog.  Instances of this structure are created by EOS_Ecom_CopyItemImageInfoByIndex.  They must be passed to EOS_Ecom_KeyImageInfo_Release.A Key Image is defined within Dev Portal and is associated with a Catalog Item.  A Key Image is intended to be used to provide imagery for an in-game store.

- SeeAlso: EOS_Ecom_CopyItemImageInfoByIndex
- SeeAlso: EOS_Ecom_KeyImageInfo_Release
- Note: Release func: ``EOS_Ecom_KeyImageInfo_Release``
*/
public struct SwiftEOS_Ecom_KeyImageInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_ECOM_KEYIMAGEINFO_API_LATEST. */
    public let ApiVersion: Int32

    /** Describes the usage of the image (ex: home_thumbnail) */
    public let `Type`: String?

    /** The URL of the image */
    public let Url: String?

    /** The expected width in pixels of the image */
    public let Width: Int

    /** The expected height in pixels of the image */
    public let Height: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ECOM_KEYIMAGEINFO_API_LATEST.
    - Parameter `Type`: Describes the usage of the image (ex: home_thumbnail)
    - Parameter Url: The URL of the image
    - Parameter Width: The expected width in pixels of the image
    - Parameter Height: The expected height in pixels of the image
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_KEYIMAGEINFO_API_LATEST,
        `Type`: String?,
        Url: String?,
        Width: Int,
        Height: Int
    ) {
        self.ApiVersion = ApiVersion
        self.`Type` = `Type`
        self.Url = Url
        self.Width = Width
        self.Height = Height
    }
}
