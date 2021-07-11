import Foundation
import EOSSDK

/** Input parameters for the `EOS_Connect_Login` function. */
public struct SwiftEOS_Connect_LoginOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_LOGIN_API_LATEST`. */
    public let ApiVersion: Int32

    /** Credentials specified for a given login method */
    public let Credentials: SwiftEOS_Connect_Credentials?

    /**
    Additional non-authoritative information about the local user.

    This field is required to be set and only used when authenticating the user using Apple, Google, Nintendo Account, Nintendo Service Account, Oculus or the Device ID feature login.
    When using other identity providers, set to NULL.
    */
    public let UserLoginInfo: SwiftEOS_Connect_UserLoginInfo?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_LoginOptions {
        try _tagEOS_Connect_LoginOptions(
            ApiVersion: ApiVersion,
            Credentials: try pointerManager.managedPointer(copyingValueOrNilPointer: Credentials?.buildSdkObject(pointerManager: pointerManager)),
            UserLoginInfo: try pointerManager.managedPointer(copyingValueOrNilPointer: UserLoginInfo?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_LoginOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Credentials = try SwiftEOS_Connect_Credentials.init(sdkObject: sdkObject.Credentials?.pointee)
        self.UserLoginInfo = try SwiftEOS_Connect_UserLoginInfo.init(sdkObject: sdkObject.UserLoginInfo?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_LOGIN_API_LATEST`.
    - Parameter Credentials: Credentials specified for a given login method
    - Parameter UserLoginInfo: Additional non-authoritative information about the local user.
    This field is required to be set and only used when authenticating the user using Apple, Google, Nintendo Account, Nintendo Service Account, Oculus or the Device ID feature login.
    When using other identity providers, set to NULL.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_LOGIN_API_LATEST,
        Credentials: SwiftEOS_Connect_Credentials?,
        UserLoginInfo: SwiftEOS_Connect_UserLoginInfo?
    ) {
        self.ApiVersion = ApiVersion
        self.Credentials = Credentials
        self.UserLoginInfo = UserLoginInfo
    }
}
