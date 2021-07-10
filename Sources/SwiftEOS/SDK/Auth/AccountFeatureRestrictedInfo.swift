import Foundation
import EOSSDK

/**
Intermediate data needed to complete account restriction verification during login flow, returned by EOS_Auth_LoginCallbackInfo when the ResultCode is EOS_Auth_AccountFeatureRestricted
The URI inside should be exposed to the user for entry in a web browser. The URI must be copied out of this struct before completion of the callback.
*/
public struct SwiftEOS_Auth_AccountFeatureRestrictedInfo {

    /** API Version: Set this to EOS_AUTH_ACCOUNTFEATURERESTRICTEDINFO_API_LATEST. */
    public let ApiVersion: Int32

    /** The end-user verification URI. Users must be asked to open the page in a browser to address the restrictions */
    public let VerificationURI: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_AccountFeatureRestrictedInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.VerificationURI = String(cString: sdkObject.VerificationURI)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_AUTH_ACCOUNTFEATURERESTRICTEDINFO_API_LATEST.
    - Parameter VerificationURI: The end-user verification URI. Users must be asked to open the page in a browser to address the restrictions
    */
    public init(
        ApiVersion: Int32 = EOS_AUTH_ACCOUNTFEATURERESTRICTEDINFO_API_LATEST,
        VerificationURI: String?
    ) {
        self.ApiVersion = ApiVersion
        self.VerificationURI = VerificationURI
    }
}
