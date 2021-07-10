import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatServer_UnprotectMessageOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST. */
    public let ApiVersion: Int32

    /** Locally unique value describing the remote user from whom the message was received */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
    The data to decrypt

    - Note: ``EOS/_tagEOS_AntiCheatServer_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    */
    public let Data: [UInt8]?

    /** The size in bytes of OutBuffer */
    public let OutBufferSizeBytes: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_UnprotectMessageOptions {
        try _tagEOS_AntiCheatServer_UnprotectMessageOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            DataLengthBytes: try safeNumericCast(exactly: Data?.count ?? .zero),
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
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
        self.OutBufferSizeBytes = try safeNumericCast(exactly: sdkObject.OutBufferSizeBytes)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST.
    - Parameter ClientHandle: Locally unique value describing the remote user from whom the message was received
    - Parameter Data: The data to decrypt
    - Note: ``EOS/_tagEOS_AntiCheatServer_UnprotectMessageOptions/DataLengthBytes``:
    Length in bytes of input
    - Parameter OutBufferSizeBytes: The size in bytes of OutBuffer
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_UNPROTECTMESSAGE_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        Data: [UInt8]?,
        OutBufferSizeBytes: Int
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.Data = Data
        self.OutBufferSizeBytes = OutBufferSizeBytes
    }
}
