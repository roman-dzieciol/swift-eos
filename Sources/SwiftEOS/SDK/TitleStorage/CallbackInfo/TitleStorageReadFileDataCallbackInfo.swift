import Foundation
import EOSSDK

/** Structure containing data for a chunk of a file being read */
public struct SwiftEOS_TitleStorage_ReadFileDataCallbackInfo {

    /** Client-specified data passed into the file request */
    public let ClientData: UnsafeMutableRawPointer?

    /** Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start) */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name being read */
    public let Filename: String?

    /** The total file size of the file being read */
    public let TotalFileSizeBytes: Int

    /** Is this chunk the last chunk of data? */
    public let bIsLastChunk: Bool

    /**
    Pointer to the start of data to be read

    - Note: ``EOS/_tagEOS_TitleStorage_ReadFileDataCallbackInfo/DataChunkLengthBytes``:
    The length of DataChunk in bytes that can be safely read
    */
    public let DataChunk: [UInt8]?

    /**
    Memberwise initializer

    - Parameter ClientData: Client-specified data passed into the file request
    - Parameter LocalUserId: Product User ID of the local user who initiated this request (optional, will only be present in case it was provided during operation start)
    - Parameter Filename: The file name being read
    - Parameter TotalFileSizeBytes: The total file size of the file being read
    - Parameter bIsLastChunk: Is this chunk the last chunk of data?
    - Parameter DataChunk: Pointer to the start of data to be read
    - Note: ``EOS/_tagEOS_TitleStorage_ReadFileDataCallbackInfo/DataChunkLengthBytes``:
    The length of DataChunk in bytes that can be safely read
    */
    public init(
        ClientData: UnsafeMutableRawPointer?,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        TotalFileSizeBytes: Int,
        bIsLastChunk: Bool,
        DataChunk: [UInt8]?
    ) {
        self.ClientData = ClientData
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.TotalFileSizeBytes = TotalFileSizeBytes
        self.bIsLastChunk = bIsLastChunk
        self.DataChunk = DataChunk
    }
}
