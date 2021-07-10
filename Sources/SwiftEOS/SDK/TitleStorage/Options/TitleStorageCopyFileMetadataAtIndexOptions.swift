import Foundation
import EOSSDK

/** Input data for the CopyFileMetadataAtIndex function */
public struct SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_TITLESTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is requesting file metadata (optional) */
    public let LocalUserId: EOS_ProductUserId?

    /** The index to get data for */
    public let Index: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions {
        try _tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_TITLESTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST`.
    - Parameter LocalUserId: Product User ID of the local user who is requesting file metadata (optional)
    - Parameter Index: The index to get data for
    */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}
