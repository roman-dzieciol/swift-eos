import Foundation
import EOSSDK
public class SwiftEOS_TitleStorage_Actor: SwiftEOSActor {
    public let Handle: EOS_HTitleStorage

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HTitleStorage
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
    }

    /**
     * Get the cached copy of a file's metadata by index. The metadata will be for the last retrieved version. The returned pointer must be released by the user when no longer needed.
     * 
     * - Parameter Options:  Object containing properties related to which user is requesting metadata, and at what index
     * - Parameter OutMetadata:  A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_TitleStorage_FileMetadata_Release.
     * @return EOS_Success if the requested metadata is currently cached, otherwise an error result explaining what went wrong.
     * 
     * @see EOS_TitleStorage_GetFileMetadataCount
     * @see EOS_TitleStorage_FileMetadata_Release
     */
    public func CopyFileMetadataAtIndex(
        Options: SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptions,
        OutMetadata: inout SwiftEOS_TitleStorage_FileMetadata?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutMetadata, managedBy: pointerManager) { OutMetadata in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_TitleStorage_CopyFileMetadataAtIndex(
                            Handle,
                            Options,
                            OutMetadata
                        ) } } } }
    }

    /**
     * Create a cached copy of a file's metadata by filename. The metadata will be for the last retrieved or successfully saved version, and will not include any changes that have not
     * completed writing. The returned pointer must be released by the user when no longer needed.
     * 
     * - Parameter Options:  Object containing properties related to which user is requesting metadata, and for which filename
     * - Parameter OutMetadata:  A copy of the FileMetadata structure will be set if successful.  This data must be released by calling EOS_TitleStorage_FileMetadata_Release.
     * @return EOS_Success if the metadata is currently cached, otherwise an error result explaining what went wrong
     */
    public func CopyFileMetadataByFilename(
        Options: SwiftEOS_TitleStorage_CopyFileMetadataByFilenameOptions,
        OutMetadata: inout SwiftEOS_TitleStorage_FileMetadata?
    ) throws {
        try withPointerManager { pointerManager in
            try withSdkObjectPointerPointerFromInOutSwiftObject(&OutMetadata, managedBy: pointerManager) { OutMetadata in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_TitleStorage_CopyFileMetadataByFilename(
                            Handle,
                            Options,
                            OutMetadata
                        ) } } } }
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
        Options: SwiftEOS_TitleStorage_DeleteCacheOptions,
        CompletionCallback: @escaping (SwiftEOS_TitleStorage_DeleteCacheCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    try throwingSdkResult { 
                        EOS_TitleStorage_DeleteCache(
                            Handle,
                            Options,
                            ClientData,
                            { sdkCallbackInfoPointer in
                                SwiftEOS_TitleStorage_DeleteCacheCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                        ) } } } }
    }

    /**
     * Get the count of files we have previously queried information for and files we have previously read from / written to.
     * 
     * - Parameter Options:  Object containing properties related to which user is requesting the metadata count
     * @return If successful, the count of metadata currently cached. Returns 0 on failure.
     * 
     * @see EOS_TitleStorage_CopyFileMetadataAtIndex
     */
    public func GetFileMetadataCount(
        Options: SwiftEOS_TitleStorage_GetFileMetadataCountOptions
    ) throws -> Int {
        try withPointerManager { pointerManager in
            try returningTransformedResult(
                nested: { 
                    try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                        EOS_TitleStorage_GetFileMetadataCount(
                            Handle,
                            Options
                        ) } },
                transformedResult: { 
                    try safeNumericCast(exactly: $0) }
            ) }
    }

    /**
     * Query a specific file's metadata, such as file names, size, and a MD5 hash of the data. This is not required before a file may be opened. Once a file has
     * been queried, its metadata will be available by the EOS_TitleStorage_CopyFileMetadataAtIndex and EOS_TitleStorage_CopyFileMetadataByFilename functions.
     * 
     * - Parameter Options:  Object containing properties related to which user is querying files, and what file is being queried
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in the completion callback
     * - Parameter CompletionCallback:  This function is called when the query operation completes
     * 
     * @see EOS_TitleStorage_GetFileMetadataCount
     * @see EOS_TitleStorage_CopyFileMetadataAtIndex
     * @see EOS_TitleStorage_CopyFileMetadataByFilename
     */
    public func QueryFile(
        Options: SwiftEOS_TitleStorage_QueryFileOptions,
        CompletionCallback: @escaping (SwiftEOS_TitleStorage_QueryFileCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_TitleStorage_QueryFile(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_TitleStorage_QueryFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Query the file metadata, such as file names, size, and a MD5 hash of the data, for all files available for current user based on their settings (such as game role) and tags provided.
     * This is not required before a file can be downloaded by name.
     * 
     * - Parameter Options:  Object containing properties related to which user is querying files and the list of tags
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in the completion callback
     * - Parameter CompletionCallback:  This function is called when the query operation completes
     * 
     */
    public func QueryFileList(
        Options: SwiftEOS_TitleStorage_QueryFileListOptions,
        CompletionCallback: @escaping (SwiftEOS_TitleStorage_QueryFileListCallbackInfo) -> Void
    ) throws {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_TitleStorage_QueryFileList(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_TitleStorage_QueryFileListCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }

    /**
     * Retrieve the contents of a specific file, potentially downloading the contents if we do not have a local copy, from the cloud. This request will occur asynchronously, potentially over
     * multiple frames. All callbacks for this function will come from the same thread that the SDK is ticked from. If specified, the FileTransferProgressCallback will always be called at
     * least once if the request is started successfully.
     * 
     * - Parameter Options:  Object containing properties related to which user is opening the file, what the file's name is, and related mechanisms for copying the data
     * - Parameter ClientData:  Optional pointer to help clients track this request, that is returned in associated callbacks
     * - Parameter CompletionCallback:  This function is called when the read operation completes
     * @return A valid Title Storage File Request handle if successful, or NULL otherwise. Data contained in the completion callback will have more detailed information about issues with the request in failure cases. This handle must be released when it is no longer needed
     * 
     * @see EOS_TitleStorageFileTransferRequest_Release
     */
    public func ReadFile(
        Options: SwiftEOS_TitleStorage_ReadFileOptions,
        CompletionCallback: @escaping (SwiftEOS_TitleStorage_ReadFileCallbackInfo) -> Void
    ) throws -> EOS_HTitleStorageFileTransferRequest {
        try withPointerManager { pointerManager in
            try withCompletion(completion: CompletionCallback, managedBy: pointerManager) { ClientData in
                try withSdkObjectPointerFromSwiftObject(Options, managedBy: pointerManager) { Options in
                    EOS_TitleStorage_ReadFile(
                        Handle,
                        Options,
                        ClientData,
                        { sdkCallbackInfoPointer in
                            SwiftEOS_TitleStorage_ReadFileCallbackInfo.sendCompletion(sdkCallbackInfoPointer) }
                    ) } } }
    }
}
