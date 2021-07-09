import Foundation
import EOSSDK

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

    /** Memberwise initializer */
    public init(
        ClientData: UnsafeMutableRawPointer?,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        TotalFileSizeBytes: Int,
        bIsLastChunk: Bool,
        DataChunkLengthBytes: Int,
        DataChunk: [UInt8]?
    ) {
        self.ClientData = ClientData
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.TotalFileSizeBytes = TotalFileSizeBytes
        self.bIsLastChunk = bIsLastChunk
        self.DataChunkLengthBytes = DataChunkLengthBytes
        self.DataChunk = DataChunk
    }
}
