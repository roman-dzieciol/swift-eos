import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatCommon_LogGameRoundStartOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCOMMON_LOGGAMEROUNDSTART_API_LATEST. */
    public let ApiVersion: Int32

    /** Optional game session or match identifier useful for some backend API integrations */
    public let SessionIdentifier: String?

    /** Optional name of the map being played */
    public let LevelName: String?

    /** Optional name of the game mode being played */
    public let ModeName: String?

    /** Optional length of the game round to be played, in seconds. If none, use 0. */
    public let RoundTimeSeconds: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatCommon_LogGameRoundStartOptions {
        try _tagEOS_AntiCheatCommon_LogGameRoundStartOptions(
            ApiVersion: ApiVersion,
            SessionIdentifier: pointerManager.managedPointerToBuffer(copyingArray: SessionIdentifier?.utf8CString),
            LevelName: pointerManager.managedPointerToBuffer(copyingArray: LevelName?.utf8CString),
            ModeName: pointerManager.managedPointerToBuffer(copyingArray: ModeName?.utf8CString),
            RoundTimeSeconds: try safeNumericCast(exactly: RoundTimeSeconds)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatCommon_LogGameRoundStartOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionIdentifier = String(cString: sdkObject.SessionIdentifier)
        self.LevelName = String(cString: sdkObject.LevelName)
        self.ModeName = String(cString: sdkObject.ModeName)
        self.RoundTimeSeconds = try safeNumericCast(exactly: sdkObject.RoundTimeSeconds)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATCOMMON_LOGGAMEROUNDSTART_API_LATEST.
    - Parameter SessionIdentifier: Optional game session or match identifier useful for some backend API integrations
    - Parameter LevelName: Optional name of the map being played
    - Parameter ModeName: Optional name of the game mode being played
    - Parameter RoundTimeSeconds: Optional length of the game round to be played, in seconds. If none, use 0.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCOMMON_LOGGAMEROUNDSTART_API_LATEST,
        SessionIdentifier: String?,
        LevelName: String?,
        ModeName: String?,
        RoundTimeSeconds: Int
    ) {
        self.ApiVersion = ApiVersion
        self.SessionIdentifier = SessionIdentifier
        self.LevelName = LevelName
        self.ModeName = ModeName
        self.RoundTimeSeconds = RoundTimeSeconds
    }
}
