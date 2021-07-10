import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_BeginSessionOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_ANTICHEATCLIENT_BEGINSESSION_API_LATEST`. */
    public let ApiVersion: Int32

    /** Logged in user identifier from earlier call to `EOS_Connect_Login` family of functions */
    public let LocalUserId: EOS_ProductUserId?

    /** Operating mode */
    public let Mode: EOS_EAntiCheatClientMode

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_BeginSessionOptions {
        _tagEOS_AntiCheatClient_BeginSessionOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mode: Mode
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_BeginSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mode = sdkObject.Mode
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_ANTICHEATCLIENT_BEGINSESSION_API_LATEST`.
    - Parameter LocalUserId: Logged in user identifier from earlier call to `EOS_Connect_Login` family of functions
    - Parameter Mode: Operating mode
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_BEGINSESSION_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        Mode: EOS_EAntiCheatClientMode
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mode = Mode
    }
}
