import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyDetails_CopyMemberAttributeByKey function. */
public struct SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID of the lobby member  */
    public let TargetUserId: EOS_ProductUserId?

    /** Name of the attribute to copy  */
    public let AttrKey: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions {
        _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AttrKey: pointerManager.managedPointerToBuffer(copyingArray: AttrKey?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyMemberAttributeByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AttrKey = String(cString: sdkObject.AttrKey)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYKEY_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AttrKey: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AttrKey = AttrKey
    }
}
