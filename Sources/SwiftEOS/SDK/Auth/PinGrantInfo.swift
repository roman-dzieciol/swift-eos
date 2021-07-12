import Foundation
import EOSSDK

/**
Intermediate data needed to complete the `EOS_LCT_DeviceCode` and `EOS_LCT_ExternalAuth` login flows, returned by `EOS_Auth_LoginCallbackInfo`.
The data inside should be exposed to the user for entry on a secondary device.
All data must be copied out before the completion of this callback.
*/
public struct SwiftEOS_Auth_PinGrantInfo {

    /** API Version: Set this to `EOS_AUTH_PINGRANTINFO_API_LATEST`. */
    public let ApiVersion: Int32

    /** Code the user must input on an external device to activate the login */
    public let UserCode: String?

    /** The end-user verification URI. Users can be asked to manually type this into their browser. */
    public let VerificationURI: String?

    /** Time the user has, in seconds, to complete the process or else timeout */
    public let ExpiresIn: Int

    /** A verification URI that includes the user code. Useful for non-textual transmission. */
    public let VerificationURIComplete: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_PinGrantInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.UserCode = stringFromOptionalCStringPointer(sdkObject.UserCode)
        self.VerificationURI = stringFromOptionalCStringPointer(sdkObject.VerificationURI)
        self.ExpiresIn = try safeNumericCast(exactly: sdkObject.ExpiresIn)
        self.VerificationURIComplete = stringFromOptionalCStringPointer(sdkObject.VerificationURIComplete)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_AUTH_PINGRANTINFO_API_LATEST`.
    - Parameter UserCode: Code the user must input on an external device to activate the login
    - Parameter VerificationURI: The end-user verification URI. Users can be asked to manually type this into their browser.
    - Parameter ExpiresIn: Time the user has, in seconds, to complete the process or else timeout
    - Parameter VerificationURIComplete: A verification URI that includes the user code. Useful for non-textual transmission.
    */
    public init(
        ApiVersion: Int32 = EOS_AUTH_PINGRANTINFO_API_LATEST,
        UserCode: String?,
        VerificationURI: String?,
        ExpiresIn: Int,
        VerificationURIComplete: String?
    ) {
        self.ApiVersion = ApiVersion
        self.UserCode = UserCode
        self.VerificationURI = VerificationURI
        self.ExpiresIn = ExpiresIn
        self.VerificationURIComplete = VerificationURIComplete
    }
}
