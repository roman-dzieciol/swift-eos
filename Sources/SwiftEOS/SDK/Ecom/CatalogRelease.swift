import Foundation
import EOSSDK

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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ECOM_CATALOGRELEASE_API_LATEST,
        CompatibleAppIdCount: Int,
        CompatibleAppIds: [String]?,
        CompatiblePlatformCount: Int,
        CompatiblePlatforms: [String]?,
        ReleaseNote: String?
    ) {
        self.ApiVersion = ApiVersion
        self.CompatibleAppIdCount = CompatibleAppIdCount
        self.CompatibleAppIds = CompatibleAppIds
        self.CompatiblePlatformCount = CompatiblePlatformCount
        self.CompatiblePlatforms = CompatiblePlatforms
        self.ReleaseNote = ReleaseNote
    }
}
