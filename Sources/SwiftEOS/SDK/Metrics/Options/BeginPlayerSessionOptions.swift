import Foundation
import EOSSDK

/** BeginPlayerSession. */
public struct SwiftEOS_Metrics_BeginPlayerSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_METRICS_BEGINPLAYERSESSION_API_LATEST. */
    public let ApiVersion: Int32

    /** Account ID type that is set in the union. */
    public let AccountIdType: EOS_EMetricsAccountIdType
    public let AccountId: _tagEOS_Metrics_BeginPlayerSessionOptions.__Unnamed_union_AccountId

    /** The in-game display name for the user as UTF-8 string. */
    public let DisplayName: String?

    /** The user's game controller type. */
    public let ControllerType: EOS_EUserControllerType

    /**
    IP address of the game server hosting the game session. For a localhost session, set to NULL.

    - details: Must be in either one of the following IPv4 or IPv6 string formats:* "127.0.0.1".* "1200:0000:AB00:1234:0000:2552:7777:1313".If both IPv4 and IPv6 addresses are available, use the IPv6 address.
    */
    public let ServerIp: String?

    /**
    Optional, application-defined custom match session identifier. If the identifier is not used, set to NULL.

    - details: The game can tag each game session with a custom session match identifier,which will be shown in the Played Sessions listing at the user profile dashboard.
    */
    public let GameSessionId: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Metrics_BeginPlayerSessionOptions {
        _tagEOS_Metrics_BeginPlayerSessionOptions(
            ApiVersion: ApiVersion,
            AccountIdType: AccountIdType,
            AccountId: AccountId,
            DisplayName: pointerManager.managedPointerToBuffer(copyingArray: DisplayName?.utf8CString),
            ControllerType: ControllerType,
            ServerIp: pointerManager.managedPointerToBuffer(copyingArray: ServerIp?.utf8CString),
            GameSessionId: pointerManager.managedPointerToBuffer(copyingArray: GameSessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Metrics_BeginPlayerSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AccountIdType = sdkObject.AccountIdType
        self.AccountId = sdkObject.AccountId
        self.DisplayName = String(cString: sdkObject.DisplayName)
        self.ControllerType = sdkObject.ControllerType
        self.ServerIp = String(cString: sdkObject.ServerIp)
        self.GameSessionId = String(cString: sdkObject.GameSessionId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_METRICS_BEGINPLAYERSESSION_API_LATEST.
    - Parameter AccountIdType: Account ID type that is set in the union.
    - Parameter DisplayName: The in-game display name for the user as UTF-8 string.
    - Parameter ControllerType: The user's game controller type.
    - Parameter ServerIp: IP address of the game server hosting the game session. For a localhost session, set to NULL.
    - details: Must be in either one of the following IPv4 or IPv6 string formats:* "127.0.0.1".* "1200:0000:AB00:1234:0000:2552:7777:1313".If both IPv4 and IPv6 addresses are available, use the IPv6 address.
    - Parameter GameSessionId: Optional, application-defined custom match session identifier. If the identifier is not used, set to NULL.
    - details: The game can tag each game session with a custom session match identifier,which will be shown in the Played Sessions listing at the user profile dashboard.
    */
    public init(
        ApiVersion: Int32 = EOS_METRICS_BEGINPLAYERSESSION_API_LATEST,
        AccountIdType: EOS_EMetricsAccountIdType,
        AccountId: _tagEOS_Metrics_BeginPlayerSessionOptions.__Unnamed_union_AccountId,
        DisplayName: String?,
        ControllerType: EOS_EUserControllerType,
        ServerIp: String?,
        GameSessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AccountIdType = AccountIdType
        self.AccountId = AccountId
        self.DisplayName = DisplayName
        self.ControllerType = ControllerType
        self.ServerIp = ServerIp
        self.GameSessionId = GameSessionId
    }
}
