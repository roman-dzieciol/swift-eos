import Foundation
import EOSSDK

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

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_PLAYERDATASTORAGE_WRITEFILEOPTIONS_API_LATEST. 
     * - Parameter LocalUserId:  The Product User ID of the local user who is writing the requested file to the cloud 
     * - Parameter Filename:  The name of the file to write; if this file already exists, the contents will be replaced if the write request completes successfully 
     * - Parameter ChunkLengthBytes:  Requested maximum amount of data (in bytes) that can be written to the file per tick 
     * - Parameter WriteFileDataCallback:  Callback function that provides chunks of data to be written into the requested file 
     * - Parameter FileTransferProgressCallback:  Optional callback function to inform the application of upload progress; will be called at least once if set 
     */
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
