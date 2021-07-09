import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST.  */
    public let ApiVersion: Int32

    /** Length in bytes of input  */
    public let DataLengthBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions {
        try _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_GetProtectMessageOutputLengthOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_GETPROTECTMESSAGEOUTPUTLENGTH_API_LATEST,
        DataLengthBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
    }
}
