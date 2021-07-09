import Foundation
import EOSSDK

/** Input data for the CopyFileMetadataByFilename function */
public struct SwiftEOS_TitleStorage_CopyFileMetadataByFilenameOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is requesting file metadata (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file's name to get data for  */
    public let Filename: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions {
        _tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}
