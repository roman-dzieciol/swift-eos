import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatClient_UnprotectMessageOptions {

    /** API Version: Set this to `EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    The data to decrypt

    - Note: ``EOS/_tagEOS_AntiCheatClient_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    */
    public let Data: [UInt8]?

    /** The size in bytes of OutBuffer */
    public let OutBufferSizeBytes: Int

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST`.
    - Parameter Data: The data to decrypt
    - Note: ``EOS/_tagEOS_AntiCheatClient_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    - Parameter OutBufferSizeBytes: The size in bytes of OutBuffer
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
