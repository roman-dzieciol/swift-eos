import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_UnprotectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Length in bytes of input 
     * - array buffer: Data
     */
    public let DataLengthBytes: Int

    /**
     * The data to decrypt 
     * - array num: DataLengthBytes
     */
    public let Data: [UInt8]?

    /** The size in bytes of OutBuffer  */
    public let OutBufferSizeBytes: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_UnprotectMessageOptions {
        try _tagEOS_AntiCheatClient_UnprotectMessageOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            OutBufferSizeBytes: try safeNumericCast(exactly: OutBufferSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_UnprotectMessageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST. 
     * - Parameter DataLengthBytes:  Length in bytes of input 
     * - array buffer: Data
     * - Parameter Data:  The data to decrypt 
     * - array num: DataLengthBytes
     * - Parameter OutBufferSizeBytes:  The size in bytes of OutBuffer 
     */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_UNPROTECTMESSAGE_API_LATEST,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
