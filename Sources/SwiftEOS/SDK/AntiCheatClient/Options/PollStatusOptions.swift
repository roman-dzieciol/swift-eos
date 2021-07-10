import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_PollStatusOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_POLLSTATUS_API_LATEST. */
    public let ApiVersion: Int32

    /** The size of OutMessage in bytes. Recommended size is 256 bytes. */
    public let OutMessageLength: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_PollStatusOptions {
        try _tagEOS_AntiCheatClient_PollStatusOptions(
            ApiVersion: ApiVersion,
            OutMessageLength: try safeNumericCast(exactly: OutMessageLength)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_PollStatusOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.OutMessageLength = try safeNumericCast(exactly: sdkObject.OutMessageLength)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATCLIENT_POLLSTATUS_API_LATEST.
    - Parameter OutMessageLength: The size of OutMessage in bytes. Recommended size is 256 bytes.
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_POLLSTATUS_API_LATEST,
        OutMessageLength: Int
    ) {
        self.ApiVersion = ApiVersion
        self.OutMessageLength = OutMessageLength
    }
}
