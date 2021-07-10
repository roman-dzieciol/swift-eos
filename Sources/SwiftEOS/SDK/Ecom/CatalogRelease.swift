import Foundation
import EOSSDK

/**
Contains information about a single release within the catalog. Instances of this structure are
created by `EOS_Ecom_CopyItemReleaseByIndex`. They must be passed to `EOS_Ecom_CatalogRelease_Release`.

- Note: Release func: ``EOS_Ecom_CatalogRelease_Release``
*/
public struct SwiftEOS_Ecom_CatalogRelease: SwiftEOSObject {

    /** API Version: Set this to `EOS_ECOM_CATALOGRELEASE_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    A list of compatible APP IDs

    - Note: ``EOS/_tagEOS_Ecom_CatalogRelease/CompatibleAppIdCount``:
    The number of APP IDs
    */
    public let CompatibleAppIds: [String]?

    /**
    A list of compatible Platforms

    - Note: ``EOS/_tagEOS_Ecom_CatalogRelease/CompatiblePlatformCount``:
    The number of platforms
    */
    public let CompatiblePlatforms: [String]?

    /** Release note for compatible versions */
    public let ReleaseNote: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Ecom_CatalogRelease {
        try _tagEOS_Ecom_CatalogRelease(
            ApiVersion: ApiVersion,
            CompatibleAppIdCount: try safeNumericCast(exactly: CompatibleAppIds?.count ?? .zero),
            CompatibleAppIds: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: CompatibleAppIds?.map { 
                    $0.utf8CString }),
            CompatiblePlatformCount: try safeNumericCast(exactly: CompatiblePlatforms?.count ?? .zero),
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
        self.CompatibleAppIds = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CompatibleAppIds,
            count: sdkObject.CompatibleAppIdCount
        )
        self.CompatiblePlatforms = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.CompatiblePlatforms,
            count: sdkObject.CompatiblePlatformCount
        )
        self.ReleaseNote = String(cString: sdkObject.ReleaseNote)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ECOM_CATALOGRELEASE_API_LATEST`.
    - Parameter CompatibleAppIds: A list of compatible APP IDs
    - Note: ``EOS/_tagEOS_Ecom_CatalogRelease/CompatibleAppIdCount``:
    The number of APP IDs
    - Parameter CompatiblePlatforms: A list of compatible Platforms
    - Note: ``EOS/_tagEOS_Ecom_CatalogRelease/CompatiblePlatformCount``:
    The number of platforms
    - Parameter ReleaseNote: Release note for compatible versions
    */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CATALOGRELEASE_API_LATEST,
        CompatibleAppIds: [String]?,
        CompatiblePlatforms: [String]?,
        ReleaseNote: String?
    ) {
        self.ApiVersion = ApiVersion
        self.CompatibleAppIds = CompatibleAppIds
        self.CompatiblePlatforms = CompatiblePlatforms
        self.ReleaseNote = ReleaseNote
    }
}
