import Foundation
import EOSSDK


/**
Metadata information for a specific file

- Note: Release func: ``EOS_TitleStorage_FileMetadata_Release``
*/
public struct SwiftEOS_TitleStorage_FileMetadata: SwiftEOSObject {

    /** API Version: Set this to `EOS_TITLESTORAGE_FILEMETADATA_API_LATEST`. */
    public let ApiVersion: Int32

    /** The total size of the file in bytes (Includes file header in addition to file contents). */
    public let FileSizeBytes: Int

    /** The MD5 Hash of the entire file (including additional file header), in hex digits */
    public let MD5Hash: String?

    /** The file's name */
    public let Filename: String?

    /** The size of data (payload) in file in unencrypted (original) form. */
    public let UnencryptedDataSizeBytes: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_FileMetadata {
        try _tagEOS_TitleStorage_FileMetadata(
            ApiVersion: ApiVersion,
            FileSizeBytes: try safeNumericCast(exactly: FileSizeBytes),
            MD5Hash: pointerManager.managedPointerToBuffer(copyingArray: MD5Hash?.utf8CString),
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString),
            UnencryptedDataSizeBytes: try safeNumericCast(exactly: UnencryptedDataSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_FileMetadata?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.FileSizeBytes = try safeNumericCast(exactly: sdkObject.FileSizeBytes)
        self.MD5Hash = stringFromOptionalCStringPointer(sdkObject.MD5Hash)
        self.Filename = stringFromOptionalCStringPointer(sdkObject.Filename)
        self.UnencryptedDataSizeBytes = try safeNumericCast(exactly: sdkObject.UnencryptedDataSizeBytes)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_TITLESTORAGE_FILEMETADATA_API_LATEST`.
    - Parameter FileSizeBytes: The total size of the file in bytes (Includes file header in addition to file contents).
    - Parameter MD5Hash: The MD5 Hash of the entire file (including additional file header), in hex digits
    - Parameter Filename: The file's name
    - Parameter UnencryptedDataSizeBytes: The size of data (payload) in file in unencrypted (original) form.
    */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_FILEMETADATA_API_LATEST,
        FileSizeBytes: Int,
        MD5Hash: String?,
        Filename: String?,
        UnencryptedDataSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.FileSizeBytes = FileSizeBytes
        self.MD5Hash = MD5Hash
        self.Filename = Filename
        self.UnencryptedDataSizeBytes = UnencryptedDataSizeBytes
    }
}
