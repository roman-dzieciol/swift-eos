import Foundation
import EOSSDK

/** Input data for the CopyFileMetadataAtIndex function */
public struct SwiftEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PLAYERDATASTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is requesting file metadata */
    public let LocalUserId: EOS_ProductUserId?

    /** The index to get data for */
    public let Index: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions {
        try _tagEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Index: try safeNumericCast(exactly: Index)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Index = try safeNumericCast(exactly: sdkObject.Index)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PLAYERDATASTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user who is requesting file metadata
    - Parameter Index: The index to get data for
    */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Index = Index
    }
}
