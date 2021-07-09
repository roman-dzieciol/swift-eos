import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_SetGameSessionIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_SETGAMESESSIONID_API_LATEST.  */
    public let ApiVersion: Int32

    /** Game session identifier  */
    public let GameSessionId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_SetGameSessionIdOptions {
        _tagEOS_AntiCheatCommon_SetGameSessionIdOptions(
            ApiVersion: ApiVersion,
            GameSessionId: pointerManager.managedPointerToBuffer(copyingArray: GameSessionId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_SetGameSessionIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.GameSessionId = String(cString: sdkObject.GameSessionId)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_SETGAMESESSIONID_API_LATEST,
        GameSessionId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.GameSessionId = GameSessionId
    }
}
