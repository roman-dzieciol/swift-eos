import Foundation
import EOSSDK


/** Input data for the CopyFileMetadataByFilename function */
public struct SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is requesting file metadata */
    public let LocalUserId: EOS_ProductUserId?

    /** The file's name to get data for */
    public let Filename: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions {
        _tagEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = stringFromOptionalCStringPointer(sdkObject.Filename)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST`.
    - Parameter LocalUserId: The Product User ID of the local user who is requesting file metadata
    - Parameter Filename: The file's name to get data for
    */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}
