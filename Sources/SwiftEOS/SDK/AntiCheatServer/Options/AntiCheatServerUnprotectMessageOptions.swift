import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatServer_UnprotectMessageOptions {

    /** API Version: Set this to `EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST`. */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user from whom the message was received */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle?

    /**
    The data to decrypt

    - Note: ``EOS/_tagEOS_AntiCheatServer_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    */
    public let Data: [UInt8]?

    /** The size in bytes of OutBuffer */
    public let OutBufferSizeBytes: Int

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST`.
    - Parameter ClientHandle: Locally unique value describing the remote user from whom the message was received
    - Parameter Data: The data to decrypt
    - Note: ``EOS/_tagEOS_AntiCheatServer_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    - Parameter OutBufferSizeBytes: The size in bytes of OutBuffer
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle?,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
