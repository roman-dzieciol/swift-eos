import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_SetClientDetailsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST. */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer */
    public let ClientHandle: EOS_AntiCheatCommon_ClientHandle

    /** General flags associated with this client, if any */
    public let ClientFlags: EOS_EAntiCheatCommonClientFlags

    /** Input device being used by this client, if known */
    public let ClientInputMethod: EOS_EAntiCheatCommonClientInput

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_SetClientDetailsOptions {
        _tagEOS_AntiCheatCommon_SetClientDetailsOptions(
            ApiVersion: ApiVersion,
            ClientHandle: ClientHandle,
            ClientFlags: ClientFlags,
            ClientInputMethod: ClientInputMethod
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_SetClientDetailsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ClientHandle = sdkObject.ClientHandle
        self.ClientFlags = sdkObject.ClientFlags
        self.ClientInputMethod = sdkObject.ClientInputMethod
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST.
    - Parameter ClientHandle: Locally unique value used in RegisterClient/RegisterPeer
    - Parameter ClientFlags: General flags associated with this client, if any
    - Parameter ClientInputMethod: Input device being used by this client, if known
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_SETCLIENTDETAILS_API_LATEST,
        ClientHandle: EOS_AntiCheatCommon_ClientHandle,
        ClientFlags: EOS_EAntiCheatCommonClientFlags,
        ClientInputMethod: EOS_EAntiCheatCommonClientInput
    ) {
        self.ApiVersion = ApiVersion
        self.ClientHandle = ClientHandle
        self.ClientFlags = ClientFlags
        self.ClientInputMethod = ClientInputMethod
    }
}
