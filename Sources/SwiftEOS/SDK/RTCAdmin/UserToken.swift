import Foundation
import EOSSDK

/**
 * Contains information about a collection of user tokens for joining a room.
 * 
 * - see: release func: EOS_RTCAdmin_UserToken_Release
 */
public struct SwiftEOS_RTCAdmin_UserToken: SwiftEOSObject {

    /** API Version: Set this to EOS_RTCADMIN_USERTOKEN_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Product User ID for the user who owns this user token.  */
    public let ProductUserId: EOS_ProductUserId?

    /** Access token to enable a user to join a room  */
    public let Token: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_RTCAdmin_UserToken {
        _tagEOS_RTCAdmin_UserToken(
            ApiVersion: ApiVersion,
            ProductUserId: ProductUserId,
            Token: pointerManager.managedPointerToBuffer(copyingArray: Token?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_RTCAdmin_UserToken?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ProductUserId = sdkObject.ProductUserId
        self.Token = String(cString: sdkObject.Token)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_RTCADMIN_USERTOKEN_API_LATEST. 
     * - Parameter ProductUserId:  The Product User ID for the user who owns this user token. 
     * - Parameter Token:  Access token to enable a user to join a room 
     */
    public init(
        ApiVersion: Int32 = EOS_RTCADMIN_USERTOKEN_API_LATEST,
        ProductUserId: EOS_ProductUserId?,
        Token: String?
    ) {
        self.ApiVersion = ApiVersion
        self.ProductUserId = ProductUserId
        self.Token = Token
    }
}
