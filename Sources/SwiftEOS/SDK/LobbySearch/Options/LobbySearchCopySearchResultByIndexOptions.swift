import Foundation
import EOSSDK

/** Input parameters for the `EOS_LobbySearch_CopySearchResultByIndex` function. */
public struct SwiftEOS_LobbySearch_CopySearchResultByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_LOBBYSEARCH_COPYSEARCHRESULTBYINDEX_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    The index of the lobby to retrieve within the completed search query

    - SeeAlso: `EOS_LobbySearch_GetSearchResultCount`
    */
    public let LobbyIndex: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_LobbySearch_CopySearchResultByIndexOptions {
        try _tagEOS_LobbySearch_CopySearchResultByIndexOptions(
            ApiVersion: ApiVersion,
            LobbyIndex: try safeNumericCast(exactly: LobbyIndex)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_LobbySearch_CopySearchResultByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LobbyIndex = try safeNumericCast(exactly: sdkObject.LobbyIndex)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_LOBBYSEARCH_COPYSEARCHRESULTBYINDEX_API_LATEST`.
    - Parameter LobbyIndex: The index of the lobby to retrieve within the completed search query
    - SeeAlso: `EOS_LobbySearch_GetSearchResultCount`
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBYSEARCH_COPYSEARCHRESULTBYINDEX_API_LATEST,
        LobbyIndex: Int
    ) {
        self.ApiVersion = ApiVersion
        self.LobbyIndex = LobbyIndex
    }
}
