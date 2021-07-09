import Foundation
import EOSSDK
public struct SwiftEOS_Sessions_UpdateSessionOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONS_UPDATESESSION_API_LATEST.  */
    public let ApiVersion: Int32

    /** Builder handle  */
    public let SessionModificationHandle: EOS_HSessionModification?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sessions_UpdateSessionOptions {
        _tagEOS_Sessions_UpdateSessionOptions(
            ApiVersion: ApiVersion,
            SessionModificationHandle: SessionModificationHandle
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sessions_UpdateSessionOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.SessionModificationHandle = sdkObject.SessionModificationHandle
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_SESSIONS_UPDATESESSION_API_LATEST,
        SessionModificationHandle: EOS_HSessionModification?
    ) {
        self.ApiVersion = ApiVersion
        self.SessionModificationHandle = SessionModificationHandle
    }
}
