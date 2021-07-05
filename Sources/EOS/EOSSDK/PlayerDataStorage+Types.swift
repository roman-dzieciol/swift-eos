import Foundation
import EOSSDK

/** Input data for the CopyFileMetadataAtIndex function */
public struct SwiftEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is requesting file metadata  */
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

    /** Memberwise initializer */
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

/** Input data for the CopyFileMetadataByFilename function */
public struct SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is requesting file metadata  */
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
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Memberwise initializer */
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

/** Structure containing the result of a delete cache operation */
public struct SwiftEOS_PlayerDataStorage_DeleteCacheCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DeleteCacheCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_DeleteCacheCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input data for the EOS_TitleStorage_DeleteCache function */
public struct SwiftEOS_PlayerDataStorage_DeleteCacheOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is deleting his cache  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_DeleteCacheOptions {
        _tagEOS_PlayerDataStorage_DeleteCacheOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DeleteCacheOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Data containing the result information for a delete file request */
public struct SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DeleteFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_DeleteFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input data for the EOS_PlayerDataStorage_DeleteFile function */
public struct SwiftEOS_PlayerDataStorage_DeleteFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_DELETEFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who authorizes deletion of the file; must be the file's owner  */
    public let LocalUserId: EOS_ProductUserId?

    /** The name of the file to delete  */
    public let Filename: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_DeleteFileOptions {
        _tagEOS_PlayerDataStorage_DeleteFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DeleteFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_DELETEFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}

/** Data containing the result information for a duplicate file request */
public struct SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DuplicateFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_DuplicateFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input data for the EOS_PlayerDataStorage_DuplicateFile function */
public struct SwiftEOS_PlayerDataStorage_DuplicateFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who authorized the duplication of the requested file; must be the original file's owner  */
    public let LocalUserId: EOS_ProductUserId?

    /** The name of the existing file to duplicate  */
    public let SourceFilename: String?

    /** The name of the new file  */
    public let DestinationFilename: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_DuplicateFileOptions {
        _tagEOS_PlayerDataStorage_DuplicateFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            SourceFilename: pointerManager.managedPointerToBuffer(copyingArray: SourceFilename?.utf8CString),
            DestinationFilename: pointerManager.managedPointerToBuffer(copyingArray: DestinationFilename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_DuplicateFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.SourceFilename = String(cString: sdkObject.SourceFilename)
        self.DestinationFilename = String(cString: sdkObject.DestinationFilename)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        SourceFilename: String?,
        DestinationFilename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.SourceFilename = SourceFilename
        self.DestinationFilename = DestinationFilename
    }
}

/**
 * Metadata information for a specific file
 * 
 * - see: release func: EOS_PlayerDataStorage_FileMetadata_Release
 */
public struct SwiftEOS_PlayerDataStorage_FileMetadata: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_FILEMETADATA_API_LATEST.  */
    public let ApiVersion: Int32

    /** The total size of the file in bytes (Includes file header in addition to file contents)  */
    public let FileSizeBytes: Int

    /** The MD5 Hash of the entire file (including additional file header), in hex digits  */
    public let MD5Hash: String?

    /** The file's name  */
    public let Filename: String?

    /** The POSIX timestamp when the file was saved last time.  */
    public let LastModifiedTime: Int

    /** The size of data (payload) in file in unencrypted (original) form.   */
    public let UnencryptedDataSizeBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_FileMetadata {
        try _tagEOS_PlayerDataStorage_FileMetadata(
            ApiVersion: ApiVersion,
            FileSizeBytes: try safeNumericCast(exactly: FileSizeBytes),
            MD5Hash: pointerManager.managedPointerToBuffer(copyingArray: MD5Hash?.utf8CString),
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString),
            LastModifiedTime: try safeNumericCast(exactly: LastModifiedTime),
            UnencryptedDataSizeBytes: try safeNumericCast(exactly: UnencryptedDataSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_FileMetadata?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.FileSizeBytes = try safeNumericCast(exactly: sdkObject.FileSizeBytes)
        self.MD5Hash = String(cString: sdkObject.MD5Hash)
        self.Filename = String(cString: sdkObject.Filename)
        self.LastModifiedTime = try safeNumericCast(exactly: sdkObject.LastModifiedTime)
        self.UnencryptedDataSizeBytes = try safeNumericCast(exactly: sdkObject.UnencryptedDataSizeBytes)
    }
}

/** Data containing the information about a file transfer in progress (or one that has completed) */
public struct SwiftEOS_PlayerDataStorage_FileTransferProgressCallbackInfo {

    /** Client-specified data passed into the file request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name of the file being transferred  */
    public let Filename: String?

    /** Amount of bytes transferred so far in this request, out of TotalFileSizeBytes  */
    public let BytesTransferred: Int

    /** The total size of the file being transferred (Includes file header in addition to file contents, can be slightly more than expected)  */
    public let TotalFileSizeBytes: Int
}

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

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Data containing information about a query file request */
public struct SwiftEOS_PlayerDataStorage_QueryFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_QueryFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_QueryFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing information about a query file list request */
public struct SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** A count of files that were found, if successful  */
    public let FileCount: Int

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_QueryFileListCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.FileCount = try safeNumericCast(exactly: sdkObject.FileCount)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_QueryFileListCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input data for the EOS_PlayerDataStorage_QueryFileList function */
public struct SwiftEOS_PlayerDataStorage_QueryFileListOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_QUERYFILELISTOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who requested file metadata  */
    public let LocalUserId: EOS_ProductUserId?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_QueryFileListOptions {
        _tagEOS_PlayerDataStorage_QueryFileListOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_QueryFileListOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_QUERYFILELISTOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
    }
}

/** Input data for the EOS_PlayerDataStorage_QueryFile function */
public struct SwiftEOS_PlayerDataStorage_QueryFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_QUERYFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user requesting file metadata  */
    public let LocalUserId: EOS_ProductUserId?

    /** The name of the file being queried  */
    public let Filename: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_QueryFileOptions {
        _tagEOS_PlayerDataStorage_QueryFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_QueryFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_QUERYFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
    }
}

/** Data containing the result of a read file request */
public struct SwiftEOS_PlayerDataStorage_ReadFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The filename of the file that has been finished reading  */
    public let Filename: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_ReadFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_ReadFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing data for a chunk of a file being read */
public struct SwiftEOS_PlayerDataStorage_ReadFileDataCallbackInfo {

    /** Client-specified data passed into the file request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Product User ID of the local user who initiated this request  */
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

/** Input data for the EOS_PlayerDataStorage_ReadFile function */
public struct SwiftEOS_PlayerDataStorage_ReadFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_READFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is reading the requested file  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name to read; this file must already exist  */
    public let Filename: String?

    /** The maximum amount of data in bytes should be available to read in a single EOS_PlayerDataStorage_OnReadFileDataCallback call  */
    public let ReadChunkLengthBytes: Int

    /** Callback function that handles data as it comes in, and can stop the transfer early  */
    public let ReadFileDataCallback: EOS_PlayerDataStorage_OnReadFileDataCallback?

    /** Optional callback function to be informed of download progress, if the file is not already locally cached; if provided, this will be called at least once before completion if the request is successfully started  */
    public let FileTransferProgressCallback: EOS_PlayerDataStorage_OnFileTransferProgressCallback?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_ReadFileOptions {
        try _tagEOS_PlayerDataStorage_ReadFileOptions(
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
        sdkObject: _tagEOS_PlayerDataStorage_ReadFileOptions?
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
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_READFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        ReadChunkLengthBytes: Int,
        ReadFileDataCallback: EOS_PlayerDataStorage_OnReadFileDataCallback?,
        FileTransferProgressCallback: EOS_PlayerDataStorage_OnFileTransferProgressCallback?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.ReadChunkLengthBytes = ReadChunkLengthBytes
        self.ReadFileDataCallback = ReadFileDataCallback
        self.FileTransferProgressCallback = FileTransferProgressCallback
    }
}

/** The result information for a request to write data to a file */
public struct SwiftEOS_PlayerDataStorage_WriteFileCallbackInfo {

    /** Result code for the operation. EOS_Success is returned for a successful request, other codes indicate an error  */
    public let ResultCode: EOS_EResult

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name that is being written to  */
    public let Filename: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_WriteFileCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_PlayerDataStorage_WriteFileCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Data containing data for a chunk of a file being written */
public struct SwiftEOS_PlayerDataStorage_WriteFileDataCallbackInfo {

    /** Client-specified data passed into the file write request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name that is being written to  */
    public let Filename: String?

    /** The maximum amount of data in bytes that can be written safely to DataBuffer  */
    public let DataBufferLengthBytes: Int
}

/** Input data for the EOS_PlayerDataStorage_WriteFile function */
public struct SwiftEOS_PlayerDataStorage_WriteFileOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_PLAYERDATASTORAGE_WRITEFILEOPTIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the local user who is writing the requested file to the cloud  */
    public let LocalUserId: EOS_ProductUserId?

    /** The name of the file to write; if this file already exists, the contents will be replaced if the write request completes successfully  */
    public let Filename: String?

    /** Requested maximum amount of data (in bytes) that can be written to the file per tick  */
    public let ChunkLengthBytes: Int

    /** Callback function that provides chunks of data to be written into the requested file  */
    public let WriteFileDataCallback: EOS_PlayerDataStorage_OnWriteFileDataCallback?

    /** Optional callback function to inform the application of upload progress; will be called at least once if set  */
    public let FileTransferProgressCallback: EOS_PlayerDataStorage_OnFileTransferProgressCallback?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_PlayerDataStorage_WriteFileOptions {
        try _tagEOS_PlayerDataStorage_WriteFileOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Filename: pointerManager.managedPointerToBuffer(copyingArray: Filename?.utf8CString),
            ChunkLengthBytes: try safeNumericCast(exactly: ChunkLengthBytes),
            WriteFileDataCallback: /* TODO: */ WriteFileDataCallback,
            FileTransferProgressCallback: /* TODO: */ FileTransferProgressCallback
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_PlayerDataStorage_WriteFileOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Filename = String(cString: sdkObject.Filename)
        self.ChunkLengthBytes = try safeNumericCast(exactly: sdkObject.ChunkLengthBytes)
        self.WriteFileDataCallback = sdkObject.WriteFileDataCallback
        self.FileTransferProgressCallback = sdkObject.FileTransferProgressCallback
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_PLAYERDATASTORAGE_WRITEFILEOPTIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        ChunkLengthBytes: Int,
        WriteFileDataCallback: EOS_PlayerDataStorage_OnWriteFileDataCallback?,
        FileTransferProgressCallback: EOS_PlayerDataStorage_OnFileTransferProgressCallback?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.ChunkLengthBytes = ChunkLengthBytes
        self.WriteFileDataCallback = WriteFileDataCallback
        self.FileTransferProgressCallback = FileTransferProgressCallback
    }
}
