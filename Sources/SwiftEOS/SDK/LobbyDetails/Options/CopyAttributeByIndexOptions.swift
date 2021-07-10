import Foundation
import EOSSDK

/** Input parameters for the EOS_LobbyDetails_CopyAttributeByIndex function. */
public struct SwiftEOS_LobbyDetails_CopyAttributeByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The index of the attribute to retrieve
     * 
     * @see EOS_LobbyDetails_GetAttributeCount
     */
    public let AttrIndex: Int

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyAttributeByIndexOptions {
        try _tagEOS_LobbyDetails_CopyAttributeByIndexOptions(
            ApiVersion: ApiVersion,
            AttrIndex: try safeNumericCast(exactly: AttrIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyAttributeByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.AttrIndex = try safeNumericCast(exactly: sdkObject.AttrIndex)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST. 
     * - Parameter AttrIndex:  The index of the attribute to retrieve
     * 
     * @see EOS_LobbyDetails_GetAttributeCount
     */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST,
        AttrIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.AttrIndex = AttrIndex
    }
}
