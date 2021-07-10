import Foundation
import EOSSDK

/** Input parameters for the EOS_Lobby_CreateLobbySearch function. */
public struct SwiftEOS_Lobby_CreateLobbySearchOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_LOBBY_CREATELOBBYSEARCH_API_LATEST. */
    public let ApiVersion: Int32

    /** Maximum number of results allowed from the search */
    public let MaxResults: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Lobby_CreateLobbySearchOptions {
        try _tagEOS_Lobby_CreateLobbySearchOptions(
            ApiVersion: ApiVersion,
            MaxResults: try safeNumericCast(exactly: MaxResults)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Lobby_CreateLobbySearchOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.MaxResults = try safeNumericCast(exactly: sdkObject.MaxResults)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_LOBBY_CREATELOBBYSEARCH_API_LATEST.
    - Parameter MaxResults: Maximum number of results allowed from the search
    */
    public init(
        ApiVersion: Int32 = EOS_LOBBY_CREATELOBBYSEARCH_API_LATEST,
        MaxResults: Int
    ) {
        self.ApiVersion = ApiVersion
        self.MaxResults = MaxResults
    }
}
