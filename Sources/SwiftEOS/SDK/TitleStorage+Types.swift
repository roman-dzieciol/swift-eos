import Foundation
import EOSSDK

/** Input data for the CopyFileMetadataAtIndex function */
public struct SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is requesting file metadata (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The index to get data for  */
    public let Index: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
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

/** Structure containing the result of a delete cache operation */
public struct SwiftEOS_TitleStorage_DeleteCacheCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_DeleteCacheCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_TitleStorage_DeleteCacheCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input data for the EOS_TitleStorage_DeleteCache function */
public struct SwiftEOS_TitleStorage_DeleteCacheOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_DELETECACHEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is deleting his cache (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_DeleteCacheOptions {
        _tagEOS_TitleStorage_DeleteCacheOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_DeleteCacheOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_DELETECACHEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/**
 * Metadata information for a specific file
 * 
 * - see: release func: EOS_TitleStorage_FileMetadata_Release
 */
public struct SwiftEOS_TitleStorage_FileMetadata: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_FILEMETADATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** The total size of the file in bytes (Includes file header in addition to file contents).  */
    public let FileSizeBytes: Int

    /** The MD5 Hash of the entire file (including additional file header), in hex digits  */
    public let MD5Hash: String?

    /** The file's name  */
    public let Filename: String?

    /** The size of data (payload) in file in unencrypted (original) form.   */
    public let UnencryptedDataSizeBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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
        self.MD5Hash = String(cString: sdkObject.MD5Hash)
        self.Filename = String(cString: sdkObject.Filename)
        self.UnencryptedDataSizeBytes = try safeNumericCast(exactly: sdkObject.UnencryptedDataSizeBytes)
    }
}

/** Structure containing the information about a file transfer in progress (or one that has completed) */
public struct SwiftEOS_TitleStorage_FileTransferProgressCallbackInfo {

    /** Client-specified data passed into the file request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name of the file being transferred  */
    public let Filename: String?

    /** Amount of bytes transferred so far in this request, out of TotalFileSizeBytes  */
    public let BytesTransferred: Int

    /** The total size of the file being transferred (Includes file header in addition to file contents, can be slightly more than expected)  */
    public let TotalFileSizeBytes: Int
}

/** Input data for the EOS_TitleStorage_GetFileMetadataCount function */
public struct SwiftEOS_TitleStorage_GetFileMetadataCountOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is requesting file metadata (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Structure containing information about a query file request */
public struct SwiftEOS_TitleStorage_QueryFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_QueryFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_TitleStorage_QueryFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Structure containing information about a query file list request */
public struct SwiftEOS_TitleStorage_QueryFileListCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** A count of files that were found, if successful  */
    public let FileCount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_QueryFileListCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.FileCount = try safeNumericCast(exactly: sdkObject.FileCount)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_TitleStorage_QueryFileListCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input data for the EOS_TitleStorage_QueryFileList function */
public struct SwiftEOS_TitleStorage_QueryFileListOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_QUERYFILELISTOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who requested file metadata (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * List of tags to use for lookup. 
     * - array num: ListOfTagsCount
     */
    public let ListOfTags: [String]?

    /**
     * Number of tags specified in ListOfTags 
     * - array buffer: ListOfTags
     */
    public let ListOfTagsCount: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_QueryFileListOptions {
        try _tagEOS_TitleStorage_QueryFileListOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            ListOfTags: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: ListOfTags?.map { 
                    $0.utf8CString }),
            ListOfTagsCount: try safeNumericCast(exactly: ListOfTagsCount)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_QueryFileListOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.ListOfTags = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.ListOfTags,
            count: sdkObject.ListOfTagsCount
        )
        self.ListOfTagsCount = try safeNumericCast(exactly: sdkObject.ListOfTagsCount)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_QUERYFILELISTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        ListOfTags: [String]?,
        ListOfTagsCount: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.ListOfTags = ListOfTags
        self.ListOfTagsCount = ListOfTagsCount
    }
}

/** Input data for the EOS_TitleStorage_QueryFile function */
public struct SwiftEOS_TitleStorage_QueryFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_QUERYFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user requesting file metadata (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The requested file's name  */
    public let Filename: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_QueryFileOptions {
        _tagEOS_TitleStorage_QueryFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_QueryFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_QUERYFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}

/** Structure containing the result of a read file request */
public struct SwiftEOS_TitleStorage_ReadFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The filename of the file that has been finished reading  */
    public let Filename: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_ReadFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_TitleStorage_ReadFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Structure containing data for a chunk of a file being read */
public struct SwiftEOS_TitleStorage_ReadFileDataCallbackInfo {

    /** Client-specified data passed into the file request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name being read  */
    public let Filename: String?

    /** The total file size of the file being read  */
    public let TotalFileSizeBytes: Int

    /** Is this chunk the last chunk of data?  */
    public let bIsLastChunk: Bool

    /**
     * The length of DataChunk in bytes that can be safely read 
     * - array buffer: DataChunk
     */
    public let DataChunkLengthBytes: Int

    /**
     * Pointer to the start of data to be read 
     * - array num: DataChunkLengthBytes
     */
    public let DataChunk: [UInt8]?
}

/** Input data for the EOS_TitleStorage_ReadFile function */
public struct SwiftEOS_TitleStorage_ReadFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is reading the requested file (optional)  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name to read; this file must already exist  */
    public let Filename: String?

    /** The maximum amount of data in bytes should be available to read in a single EOS_TitleStorage_OnReadFileDataCallback call  */
    public let ReadChunkLengthBytes: Int

    /** Callback function to handle copying read data  */
    public let ReadFileDataCallback: EOS_TitleStorage_OnReadFileDataCallback?

    /** Optional callback function to be informed of download progress, if the file is not already locally cached. If set, this will be called at least once before completion if the request is successfully started  */
    public let FileTransferProgressCallback: EOS_TitleStorage_OnFileTransferProgressCallback?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_TitleStorage_ReadFileOptions {
        try _tagEOS_TitleStorage_ReadFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString),
            ReadChunkLengthBytes: try safeNumericCast(exactly: ReadChunkLengthBytes),
            ReadFileDataCallback: /* TODO: */ ReadFileDataCallback,
            FileTransferProgressCallback: /* TODO: */ FileTransferProgressCallback
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_TitleStorage_ReadFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
        self.ReadChunkLengthBytes = try safeNumericCast(exactly: sdkObject.ReadChunkLengthBytes)
        self.ReadFileDataCallback = sdkObject.ReadFileDataCallback
        self.FileTransferProgressCallback = sdkObject.FileTransferProgressCallback
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        ReadChunkLengthBytes: Int,
        ReadFileDataCallback: EOS_TitleStorage_OnReadFileDataCallback?,
        FileTransferProgressCallback: EOS_TitleStorage_OnFileTransferProgressCallback?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.ReadChunkLengthBytes = ReadChunkLengthBytes
        self.ReadFileDataCallback = ReadFileDataCallback
        self.FileTransferProgressCallback = FileTransferProgressCallback
    }
}
