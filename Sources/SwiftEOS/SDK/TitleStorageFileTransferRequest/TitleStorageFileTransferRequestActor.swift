import Foundation
import EOSSDK
public class SwiftEOS_TitleStorageFileTransferRequest_Actor: SwiftEOSActor {
    public let Handle: EOS_HTitleStorageFileTransferRequest

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HTitleStorageFileTransferRequest
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_TitleStorageFileTransferRequest_Release(Handle)
    }

    /**
    Attempt to cancel this file request in progress. This is a best-effort command and is not guaranteed to be successful if the request has completed before this function is called.

    - Throws: EOS_NoChange if request had already completed (can't be canceled), EOS_AlreadyPending if it's already been canceled before (this is a final state for canceled request and won't change over time).
    */
    public func CancelRequest() throws {
        try ____CancelRequest()
    }

    /**
    Get the current state of a file request.

    - Throws: EOS_RequestInProgress if the request is still in progress, or another state for failure.
    */
    public func GetFileRequestState() throws {
        try ____GetFileRequestState()
    }

    /**
    Get the file name of the file this request is for. OutStringLength will always be set to the string length of the file name if it is not NULL.

    - Parameter FilenameStringBufferSizeBytes: The maximum number of bytes that can be written to OutStringBuffer
    - Throws: - SeeAlso: EOS_TITLESTORAGE_FILENAME_MAX_LENGTH_BYTES
    - Returns: The buffer to write the NULL-terminated utf8 file name into, if successful
    */
    public func GetFilename(
        FilenameStringBufferSizeBytes: Int
    ) throws -> String? {
        try ____GetFilename(FilenameStringBufferSizeBytes)
    }
}

extension SwiftEOS_TitleStorageFileTransferRequest_Actor {

    /**
    Attempt to cancel this file request in progress. This is a best-effort command and is not guaranteed to be successful if the request has completed before this function is called.

    - Throws: EOS_NoChange if request had already completed (can't be canceled), EOS_AlreadyPending if it's already been canceled before (this is a final state for canceled request and won't change over time).
    */
    private func ____CancelRequest() throws {
        try withPointerManager { pointerManager in
            try throwingSdkResult { 
                EOS_TitleStorageFileTransferRequest_CancelRequest(Handle) } }
    }

    /**
    Get the current state of a file request.

    - Throws: EOS_RequestInProgress if the request is still in progress, or another state for failure.
    */
    private func ____GetFileRequestState() throws {
        try withPointerManager { pointerManager in
            try throwingSdkResult { 
                EOS_TitleStorageFileTransferRequest_GetFileRequestState(Handle) } }
    }

    /**
    Get the file name of the file this request is for. OutStringLength will always be set to the string length of the file name if it is not NULL.

    - Parameter FilenameStringBufferSizeBytes: The maximum number of bytes that can be written to OutStringBuffer
    - Throws: - SeeAlso: EOS_TITLESTORAGE_FILENAME_MAX_LENGTH_BYTES
    - Returns: The buffer to write the NULL-terminated utf8 file name into, if successful
    */
    private func ____GetFilename(
        _ FilenameStringBufferSizeBytes: Int
    ) throws -> String? {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersReturnedAsOptionalString { OutStringBuffer,OutStringLength in
                try withTransformed(
                    value: FilenameStringBufferSizeBytes,
                    transform: { FilenameStringBufferSizeBytes in
                        try safeNumericCast(exactly: FilenameStringBufferSizeBytes) },
                    nested: { FilenameStringBufferSizeBytes in
                        try throwingSdkResult { 
                            EOS_TitleStorageFileTransferRequest_GetFilename(
                                Handle,
                                FilenameStringBufferSizeBytes,
                                OutStringBuffer,
                                OutStringLength
                            ) } }
                ) } }
    }
}
