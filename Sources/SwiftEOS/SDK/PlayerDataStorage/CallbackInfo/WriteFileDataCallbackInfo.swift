import Foundation
import EOSSDK

/** Data containing data for a chunk of a file being written */
public struct SwiftEOS_PlayerDataStorage_WriteFileDataCallbackInfo {

    /** Client-specified data passed into the file write request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name that is being written to  */
    public let Filename: String?

    /** The maximum amount of data in bytes that can be written safely to DataBuffer  */
    public let DataBufferLengthBytes: Int

    /**
     * Memberwise initializer
     * - Parameter ClientData:  Client-specified data passed into the file write request 
     * - Parameter LocalUserId:  The Product User ID of the local user who initiated this request 
     * - Parameter Filename:  The file name that is being written to 
     * - Parameter DataBufferLengthBytes:  The maximum amount of data in bytes that can be written safely to DataBuffer 
     */
    public init(
        ClientData: UnsafeMutableRawPointer?,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        DataBufferLengthBytes: Int
    ) {
        self.ClientData = ClientData
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.DataBufferLengthBytes = DataBufferLengthBytes
    }
}
