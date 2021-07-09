import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogPlayerReviveOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGPLAYERREVIVE_API_LATEST.  */
    public let ApiVersion: Int32

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let RevivedPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /** Locally unique value used in RegisterClient/RegisterPeer  */
    public let ReviverPlayerHandle: EOS_AntiCheatCommon_ClientHandle

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogPlayerReviveOptions {
        _tagEOS_AntiCheatCommon_LogPlayerReviveOptions(
            ApiVersion: ApiVersion,
            RevivedPlayerHandle: RevivedPlayerHandle,
            ReviverPlayerHandle: ReviverPlayerHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogPlayerReviveOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.RevivedPlayerHandle = sdkObject.RevivedPlayerHandle
        self.ReviverPlayerHandle = sdkObject.ReviverPlayerHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGPLAYERREVIVE_API_LATEST,
        RevivedPlayerHandle: EOS_AntiCheatCommon_ClientHandle,
        ReviverPlayerHandle: EOS_AntiCheatCommon_ClientHandle
    ) {
        self.ApiVersion = ApiVersion
        self.RevivedPlayerHandle = RevivedPlayerHandle
        self.ReviverPlayerHandle = ReviverPlayerHandle
    }
}
