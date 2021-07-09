import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatServer_UnprotectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user from whom the message was received  */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

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
    ) throws -> _tagEOS_AntiCheatServer_UnprotectMessageOptions {
        try _tagEOS_AntiCheatServer_UnprotectMessageOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            DataLengthBytes: try safeNumericCast(exactly: DataLengthBytes),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data),
            OutBufferSizeBytes: try safeNumericCast(exactly: OutBufferSizeBytes)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_UnprotectMessageOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.DataLengthBytes = try safeNumericCast(exactly: sdkObject.DataLengthBytes)
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        DataLengthBytes: Int,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.DataLengthBytes = DataLengthBytes
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
