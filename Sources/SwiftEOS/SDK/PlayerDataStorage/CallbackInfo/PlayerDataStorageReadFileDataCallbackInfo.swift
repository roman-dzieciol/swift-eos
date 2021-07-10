import Foundation
import EOSSDK

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

    /** The length of DataChunk in bytes that can be safely read  */
    public let DataChunkLengthBytes: Int

    /** Pointer to the start of data to be read  */
    public let DataChunk: [UInt8]?

    /**
     * Memberwise initializer
     * - Parameter ClientData:  Client-specified data passed into the file request 
     * - Parameter LocalUserId:  The Product User ID of the local user who initiated this request 
     * - Parameter Filename:  The file name being read 
     * - Parameter TotalFileSizeBytes:  The total file size of the file being read 
     * - Parameter bIsLastChunk:  Is this chunk the last chunk of data? 
     * - Parameter DataChunkLengthBytes:  The length of DataChunk in bytes that can be safely read 
     * - Parameter DataChunk:  Pointer to the start of data to be read 
     */
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
