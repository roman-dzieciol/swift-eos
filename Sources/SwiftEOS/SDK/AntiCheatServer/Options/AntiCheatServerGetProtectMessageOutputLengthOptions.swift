import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions {

    /** API Version: Set this to `EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST`. */
    public let ApiVersion: Int32

    /** Length in bytes of input */
    public let DataLengthBytes: Int

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST`.
    - Parameter DataLengthBytes: Length in bytes of input
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST,
        DataLengthBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
    }
}
