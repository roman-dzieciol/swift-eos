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
     * Get the cached copy of a file's metadata by index. The metadata will be for the last retrieved or successfully saved version, and will not include any local changes that have not been
     * committed by calling SaveFile. The returned pointer must be released by the user when no longer needed.
     * 
     * - Parameter CopyFileMetadataOptions:  Object containing properties related to which user is requesting metadata, and at what index
     * - Parameter OutMetadata:  A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_PlayerDataStorage_FileMetadata_Release.
     * @return EOS_EResult::EOS_Success if the requested metadata is currently cached, otherwise an error result explaining what went wrong
     * 
     * @see EOS_PlayerDataStorage_GetFileMetadataCount
     * @see EOS_PlayerDataStorage_FileMetadata_Release
     */
    public func CopyFileMetadataAtIndex(
        CopyFileMetadataOptions: SwiftEOS_PlayerDataStorage_CopyFileMetadataAtIndexOptions?
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
     * Create the cached copy of a file's metadata by filename. The metadata will be for the last retrieved or successfully saved version, and will not include any changes that have not
     * completed writing. The returned pointer must be released by the user when no longer needed.
     * 
     * - Parameter CopyFileMetadataOptions:  Object containing properties related to which user is requesting metadata, and for which filename
     * - Parameter OutMetadata:  A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_PlayerDataStorage_FileMetadata_Release.
     * @return EOS_EResult::EOS_Success if the metadata is currently cached, otherwise an error result explaining what went wrong
     */
    public func CopyFileMetadataByFilename(
        CopyFileMetadataOptions: SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions?
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
     * Clear previously cached file data. This operation will be done asynchronously. All cached files except those corresponding to the transfers in progress will be removed.
     * Warning: Use this with care. Cache system generally tries to clear old and unused cached files from time to time. Unnecessarily clearing cache can degrade performance as SDK will have to re-download data.
     * 
     * - Parameter Options:  Object containing properties related to which user is deleting cache
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in associated callbacks
     * - Parameter CompletionCallback:  This function is called when the delete cache operation completes
     * @return EOS_Success if the operation was started correctly, otherwise an error result explaining what went wrong
     */
    public func DeleteCache(
        Options: SwiftEOS_PlayerDataStorage_DeleteCacheOptions,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DeleteCacheCallbackInfo) -> Void
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
     * Deletes an existing file in the cloud. If successful, the file's data will be removed from our local cache.
     * 
     * - Parameter DeleteOptions:  Object containing properties related to which user is deleting the file, and what file name is
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in the completion callback
     * - Parameter CompletionCallback:  This function is called when the delete operation completes
     */
    public func DeleteFile(
        DeleteOptions: SwiftEOS_PlayerDataStorage_DeleteFileOptions?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfo) -> Void
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
     * Copies the data of an existing file to a new filename. This action happens entirely on the server and will not upload the contents of the source destination file from the host. This
     * function paired with a subsequent EOS_PlayerDataStorage_DeleteFile can be used to rename a file. If successful, the destination file's metadata will be updated in our local cache.
     * 
     * - Parameter DuplicateOptions:  Object containing properties related to which user is duplicating the file, and what the source and destination file names are
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in the completion callback
     * - Parameter CompletionCallback:  This function is called when the duplicate operation completes
     * 
     */
    public func DuplicateFile(
        DuplicateOptions: SwiftEOS_PlayerDataStorage_DuplicateFileOptions?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfo) -> Void
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
     * Get the count of files we have previously queried information for and files we have previously read from / written to.
     * 
     * - Parameter GetFileMetadataCountOptions:  Object containing properties related to which user is requesting the metadata count
     * - Parameter OutFileMetadataCount:  If successful, the count of metadata currently cached
     * @return EOS_EResult::EOS_Success if the input was valid, otherwise an error result explaining what went wrong
     * 
     * @see EOS_PlayerDataStorage_CopyFileMetadataAtIndex
     */
    public func GetFileMetadataCount(
        GetFileMetadataCountOptions: SwiftEOS_PlayerDataStorage_GetFileMetadataCountOptions?,
        OutFileMetadataCount: inout Int?
    ) throws {
        try withPointerManager { pointerManager in
            try withIntPointerFromInOutOptionalInt(&OutFileMetadataCount) { OutFileMetadataCount in
                try withSdkObjectPointerFromSwiftObject(GetFileMetadataCountOptions, managedBy: pointerManager) { GetFileMetadataCountOptions in
                    try throwingSdkResult { 
                        EOS_PlayerDataStorage_GetFileMetadataCount(
                            Handle,
                            GetFileMetadataCountOptions,
                            OutFileMetadataCount
                        ) } } } }
    }

    /**
     * Query a specific file's metadata, such as file names, size, and a MD5 hash of the data. This is not required before a file may be opened, saved, copied, or deleted. Once a file has
     * been queried, its metadata will be available by the EOS_PlayerDataStorage_CopyFileMetadataAtIndex and EOS_PlayerDataStorage_CopyFileMetadataByFilename functions.
     * 
     * - Parameter QueryFileOptions:  Object containing properties related to which user is querying files, and what file is being queried
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in the completion callback
     * - Parameter CompletionCallback:  This function is called when the query operation completes
     * 
     * @see EOS_PlayerDataStorage_GetFileMetadataCount
     * @see EOS_PlayerDataStorage_CopyFileMetadataAtIndex
     * @see EOS_PlayerDataStorage_CopyFileMetadataByFilename
     */
    public func QueryFile(
        QueryFileOptions: SwiftEOS_PlayerDataStorage_QueryFileOptions?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_QueryFileCallbackInfo) -> Void
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
     * Query the file metadata, such as file names, size, and a MD5 hash of the data, for all files owned by this user for this application. This is not required before a file may be opened,
     * saved, copied, or deleted.
     * 
     * - Parameter QueryFileListOptions:  Object containing properties related to which user is querying files
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in the completion callback
     * - Parameter CompletionCallback:  This function is called when the query operation completes
     * 
     * @see EOS_PlayerDataStorage_GetFileMetadataCount
     * @see EOS_PlayerDataStorage_CopyFileMetadataAtIndex
     * @see EOS_PlayerDataStorage_CopyFileMetadataByFilename
     */
    public func QueryFileList(
        QueryFileListOptions: SwiftEOS_PlayerDataStorage_QueryFileListOptions?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfo) -> Void
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
     * Retrieve the contents of a specific file, potentially downloading the contents if we do not have a local copy, from the cloud. This request will occur asynchronously, potentially over
     * multiple frames. All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at
     * least once if the request is started successfully.
     * 
     * - Parameter ReadOptions:  Object containing properties related to which user is opening the file, what the file's name is, and related mechanisms for copying the data
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in associated callbacks
     * - Parameter CompletionCallback:  This function is called when the read operation completes
     * @return A valid Player Data Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
     * 
     * @see EOS_PlayerDataStorageFileTransferRequest_Release
     */
    public func ReadFile(
        ReadOptions: SwiftEOS_PlayerDataStorage_ReadFileOptions?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_ReadFileCallbackInfo) -> Void
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
     * Write new data to a specific file, potentially overwriting any existing file by the same name, to the cloud. This request will occur asynchronously, potentially over multiple frames.
     * All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at least once if the
     * request is started successfully.
     * 
     * - Parameter WriteOptions:  Object containing properties related to which user is writing the file, what the file's name is, and related mechanisms for writing the data
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in associated callbacks
     * - Parameter CompletionCallback:  This function is called when the write operation completes
     * @return A valid Player Data Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
     * 
     * @see EOS_PlayerDataStorageFileTransferRequest_Release
     */
    public func WriteFile(
        WriteOptions: SwiftEOS_PlayerDataStorage_WriteFileOptions?,
        CompletionCallback: @escaping (SwiftEOS_PlayerDataStorage_WriteFileCallbackInfo) -> Void
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
