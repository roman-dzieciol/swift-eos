import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_ReceiveMessageFromServerOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMSERVER_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    The data received

    - Note: ``EOS/_tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions/DataLengthBytes``:
    The size of the data received
    */
    public let Data: [UInt8]?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions {
        try _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions(
            ApiVersion: ApiVersion,
            DataLengthBytes: try safeNumericCast(exactly: Data?.count ?? .zero),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMSERVER_API_LATEST`.
    - Parameter Data: The data received
    - Note: ``EOS/_tagEOS_AntiCheatClient_ReceiveMessageFromServerOptions/DataLengthBytes``:
    The size of the data received
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMSERVER_API_LATEST,
        Data: [UInt8]?
    ) {
        self.ApiVersion = ApiVersion
        self.Data = Data
    }
}
