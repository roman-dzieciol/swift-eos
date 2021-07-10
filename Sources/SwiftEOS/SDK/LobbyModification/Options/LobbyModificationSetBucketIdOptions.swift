import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyModification_SetBucketId function. */
public struct SwiftEOS_LobbyModification_SetBucketIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST.  */
    public let ApiVersion: Int32

    /** The new bucket id associated with the lobby  */
    public let BucketId: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyModification_SetBucketIdOptions {
        _tagEOS_LobbyModification_SetBucketIdOptions(
            ApiVersion: ApiVersion,
            BucketId: pointerManager.managedPointerToBuffer(copyingArray: BucketId?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyModification_SetBucketIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.BucketId = String(cString: sdkObject.BucketId)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST. 
     * - Parameter BucketId:  The new bucket id associated with the lobby 
     */
    public init(
        ApiVersion: Int32 = EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST,
        BucketId: String?
    ) {
        self.ApiVersion = ApiVersion
        self.BucketId = BucketId
    }
}
