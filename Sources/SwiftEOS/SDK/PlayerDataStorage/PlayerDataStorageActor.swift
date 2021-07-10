import Foundation
import EOSSDK
public class SwiftEOS_PlayerDataStorage_Actor: SwiftEOSActor {
    public let Handle: EOS_HPlayerDataStorage

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPlayerDataStorage
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
    Get the cached copy of a file's metadata by index. The metadata will be for the last retrieved or successfully saved version, and will not include any local changes that have not been committed by calling SaveFile. The returned pointer must be released by the user when no longer needed.

    - Parameter LocalUserId: The Product User ID of the local user who is requesting file metadata
    - Parameter Index: The index to get data for
    - Throws: - SeeAlso: EOS_PlayerDataStorage_GetFileMetadataCount
    - SeeAlso: EOS_PlayerDataStorage_FileMetadata_Release
    - Returns: A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_PlayerDataStorage_FileMetadata_Release.
    */
    public func CopyFileMetadataAtIndex(
        LocalUserId: EOS_ProductUserId?,
        Index: Int
    ) throws -> SwiftEOS_PlayerDataStorage_FileMetadata? {
        try ____CopyFileMetadataAtIndex(.init(
                LocalUserId: LocalUserId,
                Index: Index
            ))
    }

    /**
    Create the cached copy of a file's metadata by filename. The metadata will be for the last retrieved or successfully saved version, and will not include any changes that have not completed writing. The returned pointer must be released by the user when no longer needed.

    - Parameter LocalUserId: The Product User ID of the local user who is requesting file metadata
    - Parameter Filename: The file's name to get data for
    - Throws: - Returns: A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_PlayerDataStorage_FileMetadata_Release.
    */
    public func CopyFileMetadataByFilename(
        LocalUserId: EOS_ProductUserId?,
        Filename: String?
    ) throws -> SwiftEOS_PlayerDataStorage_FileMetadata? {
        try ____CopyFileMetadataByFilename(.init(
                LocalUserId: LocalUserId,
                Filename: Filename
            ))
    }

    /**
    Clear previously cached file data. This operation will be done asynchronously. All cached files except those corresponding to the transfers in progress will be removed.Warning: Use this with care. Cache system generally tries to clear old and unused cached files from time to time. Unnecessarily clearing cache can degrade performance as SDK will have to re-download data.

    - Parameter LocalUserId: Product User ID of the local user who is deleting his cache
    - Parameter CompletionCallback: This function is called when the delete cache operation completes
    - Throws: */
    public func DeleteCache(
        LocalUserId: EOS_ProductUserId?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DeleteCacheCallbackInfo) -> Void
    ) throws {
        try ____DeleteCache(
            .init(LocalUserId: LocalUserId),
            CompletionCallback
        )
    }

    /**
    Deletes an existing file in the cloud. If successful, the file's data will be removed from our local cache.

    - Parameter LocalUserId: The Product User ID of the local user who authorizes deletion of the file; must be the file's owner
    - Parameter Filename: The name of the file to delete
    - Parameter CompletionCallback: This function is called when the delete operation completes
    */
    public func DeleteFile(
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfo) -> Void
    ) throws {
        try ____DeleteFile(
            .init(
                LocalUserId: LocalUserId,
                Filename: Filename
            ),
            CompletionCallback
        )
    }

    /**
    Copies the data of an existing file to a new filename. This action happens entirely on the server and will not upload the contents of the source destination file from the host. This function paired with a subsequent EOS_PlayerDataStorage_DeleteFile can be used to rename a file. If successful, the destination file's metadata will be updated in our local cache.

    - Parameter LocalUserId: The Product User ID of the local user who authorized the duplication of the requested file; must be the original file's owner
    - Parameter SourceFilename: The name of the existing file to duplicate
    - Parameter DestinationFilename: The name of the new file
    - Parameter CompletionCallback: This function is called when the duplicate operation completes
    */
    public func DuplicateFile(
        LocalUserId: EOS_ProductUserId?,
        SourceFilename: String?,
        DestinationFilename: String?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfo) -> Void
    ) throws {
        try ____DuplicateFile(
            .init(
                LocalUserId: LocalUserId,
                SourceFilename: SourceFilename,
                DestinationFilename: DestinationFilename
            ),
            CompletionCallback
        )
    }

    /**
    Get the count of files we have previously queried information for and files we have previously read from / written to.

    - Parameter LocalUserId: The Product User ID of the local user who is requesting file metadata
    - Throws: - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataAtIndex
    - Returns: If successful, the count of metadata currently cached
    */
    public func GetFileMetadataCount(
        LocalUserId: EOS_ProductUserId?
    ) throws -> Int? {
        try ____GetFileMetadataCount(.init(LocalUserId: LocalUserId))
    }

    /**
    Query a specific file's metadata, such as file names, size, and a MD5 hash of the data. This is not required before a file may be opened, saved, copied, or deleted. Once a file has been queried, its metadata will be available by the EOS_PlayerDataStorage_CopyFileMetadataAtIndex and EOS_PlayerDataStorage_CopyFileMetadataByFilename functions.

    - Parameter LocalUserId: The Product User ID of the local user requesting file metadata
    - Parameter Filename: The name of the file being queried
    - Parameter CompletionCallback: This function is called when the query operation completes
    - SeeAlso: EOS_PlayerDataStorage_GetFileMetadataCount
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataAtIndex
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataByFilename
    */
    public func QueryFile(
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_QueryFileCallbackInfo) -> Void
    ) throws {
        try ____QueryFile(
            .init(
                LocalUserId: LocalUserId,
                Filename: Filename
            ),
            CompletionCallback
        )
    }

    /**
    Query the file metadata, such as file names, size, and a MD5 hash of the data, for all files owned by this user for this application. This is not required before a file may be opened,saved, copied, or deleted.

    - Parameter LocalUserId: The Product User ID of the local user who requested file metadata
    - Parameter CompletionCallback: This function is called when the query operation completes
    - SeeAlso: EOS_PlayerDataStorage_GetFileMetadataCount
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataAtIndex
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataByFilename
    */
    public func QueryFileList(
        LocalUserId: EOS_ProductUserId?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfo) -> Void
    ) throws {
        try ____QueryFileList(
            .init(LocalUserId: LocalUserId),
            CompletionCallback
        )
    }

    /**
    Retrieve the contents of a specific file, potentially downloading the contents if we do not have a local copy, from the cloud. This request will occur asynchronously, potentially over multiple frames. All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at least once if the request is started successfully.

    - Parameter LocalUserId: The Product User ID of the local user who is reading the requested file
    - Parameter Filename: The file name to read; this file must already exist
    - Parameter ReadChunkLengthBytes: The maximum amount of data in bytes should be available to read in a single EOS_PlayerDataStorage_OnReadFileDataCallback call
    - Parameter ReadFileDataCallback: Callback function that handles data as it comes in, and can stop the transfer early
    - Parameter FileTransferProgressCallback: Optional callback function to be informed of download progress, if the file is not already locally cached; if provided, this will be called at least once before completion if the request is successfully started
    - Parameter CompletionCallback: This function is called when the read operation completes
    - Returns: A valid Player Data Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
    - SeeAlso: EOS_PlayerDataStorageFileTransferRequest_Release
    */
    public func ReadFile(
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        ReadChunkLengthBytes: Int,
        ReadFileDataCallback: EOS_PlayerDataStorage_OnReadFileDataCallback?,
        FileTransferProgressCallback: EOS_PlayerDataStorage_OnFileTransferProgressCallback?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_ReadFileCallbackInfo) -> Void
    ) throws -> EOS_HPlayerDataStorageFileTransferRequest {
        try ____ReadFile(
            .init(
                LocalUserId: LocalUserId,
                Filename: Filename,
                ReadChunkLengthBytes: ReadChunkLengthBytes,
                ReadFileDataCallback: ReadFileDataCallback,
                FileTransferProgressCallback: FileTransferProgressCallback
            ),
            CompletionCallback
        )
    }

    /**
    Write new data to a specific file, potentially overwriting any existing file by the same name, to the cloud. This request will occur asynchronously, potentially over multiple frames.All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at least once if the request is started successfully.

    - Parameter LocalUserId: The Product User ID of the local user who is writing the requested file to the cloud
    - Parameter Filename: The name of the file to write; if this file already exists, the contents will be replaced if the write request completes successfully
    - Parameter ChunkLengthBytes: Requested maximum amount of data (in bytes) that can be written to the file per tick
    - Parameter WriteFileDataCallback: Callback function that provides chunks of data to be written into the requested file
    - Parameter FileTransferProgressCallback: Optional callback function to inform the application of upload progress; will be called at least once if set
    - Parameter CompletionCallback: This function is called when the write operation completes
    - Returns: A valid Player Data Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
    - SeeAlso: EOS_PlayerDataStorageFileTransferRequest_Release
    */
    public func WriteFile(
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        ChunkLengthBytes: Int,
        WriteFileDataCallback: EOS_PlayerDataStorage_OnWriteFileDataCallback?,
        FileTransferProgressCallback: EOS_PlayerDataStorage_OnFileTransferProgressCallback?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_WriteFileCallbackInfo) -> Void
    ) throws -> EOS_HPlayerDataStorageFileTransferRequest {
        try ____WriteFile(
            .init(
                LocalUserId: LocalUserId,
                Filename: Filename,
                ChunkLengthBytes: ChunkLengthBytes,
                WriteFileDataCallback: WriteFileDataCallback,
                FileTransferProgressCallback: FileTransferProgressCallback
            ),
            CompletionCallback
        )
    }
}

extension SwiftEOS_PlayerDataStorage_Actor {

    /**
    Get the cached copy of a file's metadata by index. The metadata will be for the last retrieved or successfully saved version, and will not include any local changes that have not been committed by calling SaveFile. The returned pointer must be released by the user when no longer needed.

    - Parameter CopyFileMetadataOptions: Object containing properties related to which user is requesting metadata, and at what index
    - Throws: - SeeAlso: EOS_PlayerDataStorage_GetFileMetadataCount
    - SeeAlso: EOS_PlayerDataStorage_FileMetadata_Release
    - Returns: A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_PlayerDataStorage_FileMetadata_Release.
    */
    private func ____CopyFileMetadataAtIndex(
        _ CopyFileMetadataOptions: SwiftEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions?
    ) throws -> SwiftEOS_PlayerDataStorage_FileMetadata? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutMetadata in
                    try withSdkObjectPointerFromSwiftObject(CopyFileMetadataOptions, managedBy: pointerManager) { CopyFileMetadataOptions in
                        try throwingSdkResult { 
                            EOS_PlayerDataStorage_CopyFileMetadataAtIndex(
                                Handle,
                                CopyFileMetadataOptions,
                                OutMetadata
                            ) } } },
                release: EOS_PlayerDataStorage_FileMetadata_Release
            ) }
    }

    /**
    Create the cached copy of a file's metadata by filename. The metadata will be for the last retrieved or successfully saved version, and will not include any changes that have not completed writing. The returned pointer must be released by the user when no longer needed.

    - Parameter CopyFileMetadataOptions: Object containing properties related to which user is requesting metadata, and for which filename
    - Throws: - Returns: A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_PlayerDataStorage_FileMetadata_Release.
    */
    private func ____CopyFileMetadataByFilename(
        _ CopyFileMetadataOptions: SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions?
    ) throws -> SwiftEOS_PlayerDataStorage_FileMetadata? {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerReturnedAsSwiftObject(
                managedBy: pointerManager,
                nest: { OutMetadata in
                    try withSdkObjectPointerFromSwiftObject(CopyFileMetadataOptions, managedBy: pointerManager) { CopyFileMetadataOptions in
                        try throwingSdkResult { 
                            EOS_PlayerDataStorage_CopyFileMetadataByFilename(
                                Handle,
                                CopyFileMetadataOptions,
                                OutMetadata
                            ) } } },
                release: EOS_PlayerDataStorage_FileMetadata_Release
            ) }
    }

    /**
    Clear previously cached file data. This operation will be done asynchronously. All cached files except those corresponding to the transfers in progress will be removed.Warning: Use this with care. Cache system generally tries to clear old and unused cached files from time to time. Unnecessarily clearing cache can degrade performance as SDK will have to re-download data.

    - Parameter Options: Object containing properties related to which user is deleting cache
    - Parameter CompletionCallback: This function is called when the delete cache operation completes
    - Throws: */
    private func ____DeleteCache(
        _ Options: SwiftEOS_PlayerDataStorage_DeleteCacheOptions,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DeleteCacheCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_PlayerDataStorage_DeleteCache(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_PlayerDataStorage_DeleteCacheCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                        ) } } } }
    }

    /**
    Deletes an existing file in the cloud. If successful, the file's data will be removed from our local cache.

    - Parameter DeleteOptions: Object containing properties related to which user is deleting the file, and what file name is
    - Parameter CompletionCallback: This function is called when the delete operation completes
    */
    private func ____DeleteFile(
        _ DeleteOptions: SwiftEOS_PlayerDataStorage_DeleteFileOptions?,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(DeleteOptions, managedBy: pointerManager) { DeleteOptions in
                    EOS_PlayerDataStorage_DeleteFile(
                        Handle,
                        DeleteOptions,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Copies the data of an existing file to a new filename. This action happens entirely on the server and will not upload the contents of the source destination file from the host. This function paired with a subsequent EOS_PlayerDataStorage_DeleteFile can be used to rename a file. If successful, the destination file's metadata will be updated in our local cache.

    - Parameter DuplicateOptions: Object containing properties related to which user is duplicating the file, and what the source and destination file names are
    - Parameter CompletionCallback: This function is called when the duplicate operation completes
    */
    private func ____DuplicateFile(
        _ DuplicateOptions: SwiftEOS_PlayerDataStorage_DuplicateFileOptions?,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(DuplicateOptions, managedBy: pointerManager) { DuplicateOptions in
                    EOS_PlayerDataStorage_DuplicateFile(
                        Handle,
                        DuplicateOptions,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Get the count of files we have previously queried information for and files we have previously read from / written to.

    - Parameter GetFileMetadataCountOptions: Object containing properties related to which user is requesting the metadata count
    - Throws: - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataAtIndex
    - Returns: If successful, the count of metadata currently cached
    */
    private func ____GetFileMetadataCount(
        _ GetFileMetadataCountOptions: SwiftEOS_PlayerDataStorage_GetFileMetadataCountOptions?
    ) throws -> Int? {
        try withPointerManager { pointerManager in
            try withIntegerPointerReturnedAsInteger { OutFileMetadataCount in
                try withSdkObjectPointerFromSwiftObject(GetFileMetadataCountOptions, managedBy: pointerManager) { GetFileMetadataCountOptions in
                    try throwingSdkResult { 
                        EOS_PlayerDataStorage_GetFileMetadataCount(
                            Handle,
                            GetFileMetadataCountOptions,
                            OutFileMetadataCount
                        ) } } } }
    }

    /**
    Query a specific file's metadata, such as file names, size, and a MD5 hash of the data. This is not required before a file may be opened, saved, copied, or deleted. Once a file has been queried, its metadata will be available by the EOS_PlayerDataStorage_CopyFileMetadataAtIndex and EOS_PlayerDataStorage_CopyFileMetadataByFilename functions.

    - Parameter QueryFileOptions: Object containing properties related to which user is querying files, and what file is being queried
    - Parameter CompletionCallback: This function is called when the query operation completes
    - SeeAlso: EOS_PlayerDataStorage_GetFileMetadataCount
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataAtIndex
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataByFilename
    */
    private func ____QueryFile(
        _ QueryFileOptions: SwiftEOS_PlayerDataStorage_QueryFileOptions?,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_QueryFileCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(QueryFileOptions, managedBy: pointerManager) { QueryFileOptions in
                    EOS_PlayerDataStorage_QueryFile(
                        Handle,
                        QueryFileOptions,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_PlayerDataStorage_QueryFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Query the file metadata, such as file names, size, and a MD5 hash of the data, for all files owned by this user for this application. This is not required before a file may be opened,saved, copied, or deleted.

    - Parameter QueryFileListOptions: Object containing properties related to which user is querying files
    - Parameter CompletionCallback: This function is called when the query operation completes
    - SeeAlso: EOS_PlayerDataStorage_GetFileMetadataCount
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataAtIndex
    - SeeAlso: EOS_PlayerDataStorage_CopyFileMetadataByFilename
    */
    private func ____QueryFileList(
        _ QueryFileListOptions: SwiftEOS_PlayerDataStorage_QueryFileListOptions?,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(QueryFileListOptions, managedBy: pointerManager) { QueryFileListOptions in
                    EOS_PlayerDataStorage_QueryFileList(
                        Handle,
                        QueryFileListOptions,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Retrieve the contents of a specific file, potentially downloading the contents if we do not have a local copy, from the cloud. This request will occur asynchronously, potentially over multiple frames. All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at least once if the request is started successfully.

    - Parameter ReadOptions: Object containing properties related to which user is opening the file, what the file's name is, and related mechanisms for copying the data
    - Parameter CompletionCallback: This function is called when the read operation completes
    - Returns: A valid Player Data Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
    - SeeAlso: EOS_PlayerDataStorageFileTransferRequest_Release
    */
    private func ____ReadFile(
        _ ReadOptions: SwiftEOS_PlayerDataStorage_ReadFileOptions?,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_ReadFileCallbackInfo) -> Void
    ) throws -> EOS_HPlayerDataStorageFileTransferRequest {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(ReadOptions, managedBy: pointerManager) { ReadOptions in
                    EOS_PlayerDataStorage_ReadFile(
                        Handle,
                        ReadOptions,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_PlayerDataStorage_ReadFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
    Write new data to a specific file, potentially overwriting any existing file by the same name, to the cloud. This request will occur asynchronously, potentially over multiple frames.All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at least once if the request is started successfully.

    - Parameter WriteOptions: Object containing properties related to which user is writing the file, what the file's name is, and related mechanisms for writing the data
    - Parameter CompletionCallback: This function is called when the write operation completes
    - Returns: A valid Player Data Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
    - SeeAlso: EOS_PlayerDataStorageFileTransferRequest_Release
    */
    private func ____WriteFile(
        _ WriteOptions: SwiftEOS_PlayerDataStorage_WriteFileOptions?,
        _ CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_WriteFileCallbackInfo) -> Void
    ) throws -> EOS_HPlayerDataStorageFileTransferRequest {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(WriteOptions, managedBy: pointerManager) { WriteOptions in
                    EOS_PlayerDataStorage_WriteFile(
                        Handle,
                        WriteOptions,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_PlayerDataStorage_WriteFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
