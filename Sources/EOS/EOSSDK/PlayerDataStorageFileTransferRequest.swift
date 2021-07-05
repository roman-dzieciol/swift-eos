import Foundation
import EOSSDK
public class SwiftEOS_PlayerDataStorageFileTransferRequest_Actor: SwiftEOSActor {
    public let Handle: EOS_HPlayerDataStorageFileTransferRequest

    /** Memberwise initializer */
    public required init(
        Handle: EOS_HPlayerDataStorageFileTransferRequest
    ) {
        self.Handle = Handle
    }

    /**  */
    deinit {
        EOS_PlayerDataStorageFileTransferRequest_Release(Handle)
    }

    /**
     * Attempt to cancel this file request in progress. This is a best-effort command and is not guaranteed to be successful if the request has completed before this function is called.
     * 
     * @return EOS_Success if cancel is successful, EOS_NoChange if request had already completed (can't be canceled), EOS_AlreadyPending if it's already been canceled before (this is a final state for canceled request and won't change over time).
     */
    public func CancelRequest() throws {
        try withPointerManager { pointerManager in
            try throwingSdkResult { 
                EOS_PlayerDataStorageFileTransferRequest_CancelRequest(Handle) } }
    }

    /**
     * Get the current state of a file request.
     * 
     * @return EOS_Success if complete and successful, EOS_PlayerDataStorage_RequestInProgress if the request is still in progress, or another state for failure.
     */
    public func GetFileRequestState() throws {
        try withPointerManager { pointerManager in
            try throwingSdkResult { 
                EOS_PlayerDataStorageFileTransferRequest_GetFileRequestState(Handle) } }
    }

    /**
     * Get the file name of the file this request is for. OutStringLength will always be set to the string length of the file name if it is not NULL.
     * 
     * - Parameter FilenameStringBufferSizeBytes:  The maximum number of bytes that can be written to OutStringBuffer
     * - Parameter OutStringBuffer:  The buffer to write the NULL-terminated utf8 file name into, if successful
     * - Parameter OutStringLength:  How long the file name is (not including null terminator)
     * @return EOS_Success if the file name was successfully written to OutFilenameBuffer, a failure result otherwise
     * 
     * @see EOS_PLAYERDATASTORAGE_FILENAME_MAX_LENGTH_BYTES
     * - Parameter OutStringBuffer:  - array num: OutStringLength
     */
    public func GetFilename(
        FilenameStringBufferSizeBytes: Int,
        OutStringBuffer: inout String?
    ) throws {
        try withPointerManager { pointerManager in
            try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutStringBuffer) { OutStringBuffer,OutStringLength in
                try throwingSdkResult { 
                    try EOS_PlayerDataStorageFileTransferRequest_GetFilename(
                        Handle,
                        try safeNumericCast(exactly: FilenameStringBufferSizeBytes),
                        OutStringBuffer,
                        OutStringLength
                    ) } } }
    }
}
