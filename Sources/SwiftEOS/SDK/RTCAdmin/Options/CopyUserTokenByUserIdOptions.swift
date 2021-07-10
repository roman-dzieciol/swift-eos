import Foundation
import EOSSDK

/** Input parameters for the EOS_RTCAdmin_CopyUserTokenByUserId function. */
public struct SwiftEOS_RTCAdmin_CopyUserTokenByUserIdOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST. */
    public let ApiVersion: Int32

    /** The Product User ID for the user whose user token we're copying. */
    public let TargetUserId: EOS_ProductUserId?

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
    ) throws -> _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions {
        try _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions(
            ApiVersion: ApiVersion,
            TargetUserId: TargetUserId,
            QueryId: try safeNumericCast(exactly: QueryId)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TargetUserId = sdkObject.TargetUserId
        self.QueryId = try safeNumericCast(exactly: sdkObject.QueryId)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST.
    - Parameter TargetUserId: The Product User ID for the user whose user token we're copying.
    - Parameter QueryId: Query identifier received as part of a previous query.
    - SeeAlso: EOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo
    */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST,
        TargetUserId: EOS_ProductUserId?,
        QueryId: Int
    ) {
        self.ApiVersion = ApiVersion
        self.TargetUserId = TargetUserId
        self.QueryId = QueryId
    }
}
