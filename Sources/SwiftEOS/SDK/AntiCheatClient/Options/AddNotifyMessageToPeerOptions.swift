import Foundation
import EOSSDK

public struct SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOPEER_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions {
        _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddNotifyMessageToPeerOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOPEER_API_LATEST`.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOPEER_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
