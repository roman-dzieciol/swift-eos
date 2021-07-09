import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyDetails_CopyAttributeByKey function. */
public struct SwiftEOS_LobbyDetails_CopyAttributeByKeyOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYATTRIBUTEBYKEY_API_LATEST.  */
    public let ApiVersion: Int32

    /** Name of the attribute  */
    public let AttrKey: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyAttributeByKeyOptions {
        _tagEOS_LobbyDetails_CopyAttributeByKeyOptions(
            ApiVersion: ApiVersion,
            AttrKey: pointerManager.managedPointerToBuffer(copyingArray: AttrKey?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyAttributeByKeyOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrKey = String(cString: sdkObject.AttrKey)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYATTRIBUTEBYKEY_API_LATEST,
        AttrKey: String?
    ) {
        self.ApiVersion = ApiVersion
        self.AttrKey = AttrKey
    }
}
