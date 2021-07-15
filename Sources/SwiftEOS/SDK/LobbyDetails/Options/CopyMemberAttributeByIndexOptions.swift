import Foundation
import EOSSDK


/** Input parameters for the `EOS_LobbyDetails_CopyMemberAttributeByIndex` function. */
public struct SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /** The Product User ID of the lobby member */
    public let TargetUserId: EOS_ProductUserId?

    /** The index of the attribute to copy */
    public let AttrIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions {
        try _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            AttrIndex: try safeNumericCast(exactly: AttrIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbyDetails_CopyMemberAttributeByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.AttrIndex = try safeNumericCast(exactly: sdkObject.AttrIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST`.
    - Parameter TargetUserId: The Product User ID of the lobby member
    - Parameter AttrIndex: The index of the attribute to copy
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        AttrIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.AttrIndex = AttrIndex
    }
}
