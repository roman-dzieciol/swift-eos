import Foundation
import EOSSDK

/** Data containing the information about a file transfer in progress (or one that has completed) */
public struct SwiftEOS_PlayerDataStorage_FileTransferProgressCallbackInfo {

    /** Client-specified data passed into the file request  */
    public let ClientData: UnsafeMutableRawPointer?

    /** The Product User ID of the local user who initiated this request  */
    public let LocalUserId: EOS_ProductUserId?

    /** The file name of the file being transferred  */
    public let Filename: String?

    /** Amount of bytes transferred so far in this request, out of TotalFileSizeBytes  */
    public let BytesTransferred: Int

    /** The total size of the file being transferred (Includes file header in addition to file contents, can be slightly more than expected)  */
    public let TotalFileSizeBytes: Int

    /** Memberwise initializer */
    public init(
        ClientData: UnsafeMutableRawPointer?,
        LocalUserId: EOS_ProductUserId?,
        Filename: String?,
        BytesTransferred: Int,
        TotalFileSizeBytes: Int
    ) {
        self.ClientData = ClientData
        self.LocalUserId = LocalUserId
        self.Filename = Filename
        self.BytesTransferred = BytesTransferred
        self.TotalFileSizeBytes = TotalFileSizeBytes
    }
}
