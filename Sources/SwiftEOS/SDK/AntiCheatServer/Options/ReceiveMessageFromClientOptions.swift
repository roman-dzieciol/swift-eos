import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatServer_ReceiveMessageFromClientOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATSERVER_RECEIVEMESSAGEFROMCLIENT_API_LATEST`. */
    public let ApiVersion: Int32

    /** Optional value, if non-null then only messages addressed to this specific client will be returned */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /**
    The data received

    - Note: ``EOS/_tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions/DataLengthBytes``:
    The size of the data received
    */
    public let Data: [UInt8]?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions {
        try _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            DataLengthBytes: try safeNumericCast(exactly: Data?.count ?? .zero),
            Data: pointerManager.managedPointerToBuffer(copyingArray: Data)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.Data = try Array(try UnsafeRawBufferPointer(
                start: sdkObject.Data,
                count: try safeNumericCast(exactly: sdkObject.DataLengthBytes)
            ))
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATSERVER_RECEIVEMESSAGEFROMCLIENT_API_LATEST`.
    - Parameter ClientHandle: Optional value, if non-null then only messages addressed to this specific client will be returned
    - Parameter Data: The data received
    - Note: ``EOS/_tagEOS_AntiCheatServer_ReceiveMessageFromClientOptions/DataLengthBytes``:
    The size of the data received
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_RECEIVEMESSAGEFROMCLIENT_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        Data: [UInt8]?
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.Data = Data
    }
}
