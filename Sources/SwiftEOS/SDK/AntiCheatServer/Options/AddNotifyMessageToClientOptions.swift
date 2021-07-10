import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatServer_AddNotifyMessageToClientOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST. */
    public let ApiVersion: Int32

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions {
        _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions(ApiVersion: ApiVersion)
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatServer_AddNotifyMessageToClientOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST
    ) {
        self.ApiVersion = ApiVersion
    }
}
