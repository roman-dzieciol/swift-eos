import Foundation
import EOSSDK

/** Input data for the `EOS_TitleStorage_ReadFile` function */
public struct SwiftEOS_TitleStorage_ReadFileOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** Product User ID of the local user who is reading the requested file (optional) */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name to read; this file must already exist */
    public let Filename: String?

    /** The maximum amount of data in bytes should be available to read in a single `EOS_TitleStorage_OnReadFileDataCallback` call */
    public let ReadChunkLengthBytes: Int

    /** Callback function to handle copying read data */
    public let ReadFileDataCallback: EOS_TitleStorage_OnReadFileDataCallback?

    /** Optional callback function to be informed of download progress, if the file is not already locally cached. If set, this will be called at least once before completion if the request is successfully started */
    public let FileTransferProgressCallback: EOS_TitleStorage_OnFileTransferProgressCallback?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
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

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST`.
    - Parameter LocalUserId: Product User ID of the local user who is reading the requested file (optional)
    - Parameter Filename: The file name to read; this file must already exist
    - Parameter ReadChunkLengthBytes: The maximum amount of data in bytes should be available to read in a single `EOS_TitleStorage_OnReadFileDataCallback` call
    - Parameter ReadFileDataCallback: Callback function to handle copying read data
    - Parameter FileTransferProgressCallback: Optional callback function to be informed of download progress, if the file is not already locally cached. If set, this will be called at least once before completion if the request is successfully started
    */
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
