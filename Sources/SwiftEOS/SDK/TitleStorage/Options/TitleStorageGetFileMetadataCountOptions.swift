import Foundation
import EOSSDK

/** Input data for the EOS_TitleStorage_GetFileMetadataCount function */
public struct SwiftEOS_TitleStorage_GetFileMetadataCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST. */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is requesting file metadata (optional) */
    public let LocalUserId: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_GetFileMetadataCountOptions {
        _tagEOS_TitleStorage_GetFileMetadataCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_GetFileMetadataCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_TITLESTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST.
    - Parameter LocalUserId: Product User ID of the local user who is requesting file metadata (optional)
    */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
