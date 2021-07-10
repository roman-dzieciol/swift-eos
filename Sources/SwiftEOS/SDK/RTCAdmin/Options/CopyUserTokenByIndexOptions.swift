import Foundation
import EOSSDK

/** Input parameters for the EOS_RTCAdmin_CopyUserTokenByIndex function. */
public struct SwiftEOS_RTCAdmin_CopyUserTokenByIndexOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST. */
    public let ApiVersion: Int32

    /** Index of the user token to retrieve from the cache. */
    public let UserTokenIndex: Int

    /**
    Query identifier received as part of a previous query.

    - SeeAlso: EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
    */
    public let QueryId: Int

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions {
        try _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions(
            ApiVersion: ApiVersion,
            UserTokenIndex: try safeNumericCast(exactly: UserTokenIndex),
            QueryId: try safeNumericCast(exactly: QueryId)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserTokenIndex = try safeNumericCast(exactly: sdkObject.UserTokenIndex)
        self.QueryId = try safeNumericCast(exactly: sdkObject.QueryId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST.
    - Parameter UserTokenIndex: Index of the user token to retrieve from the cache.
    - Parameter QueryId: Query identifier received as part of a previous query.
    - SeeAlso: EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
    */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST,
        UserTokenIndex: Int,
        QueryId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.UserTokenIndex = UserTokenIndex
        self.QueryId = QueryId
    }
}
