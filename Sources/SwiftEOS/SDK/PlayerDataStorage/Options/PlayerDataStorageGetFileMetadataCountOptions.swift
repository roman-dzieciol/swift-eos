import Foundation
import EOSSDK

/** Input data for the EOS_PlayerDataStorage_GetFileMetadataCount function */
public struct SwiftEOS_PlayerDataStorage_GetFileMetadataCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is requesting file metadata  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_GetFileMetadataCountOptions {
        _tagEOS_PlayerDataStorage_GetFileMetadataCountOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_GetFileMetadataCountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PLAYERDATASTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user who is requesting file metadata 
     */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}
