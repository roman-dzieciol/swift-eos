import Foundation
import EOSSDK

/** Input parameters for the EOS_Auth_Login function. */
public struct SwiftEOS_Auth_LoginOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_AUTH_LOGIN_API_LATEST.  */
    public let ApiVersion: Int32

    /** Credentials specified for a given login method  */
    public let Credentials: SwiftEOS_Auth_Credentials?

    /** Auth scope flags are permissions to request from the user while they are logging in. This is a bitwise-or union of EOS_EAuthScopeFlags flags defined above  */
    public let ScopeFlags: EOS_EAuthScopeFlags

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Auth_LoginOptions {
        try _tagEOS_Auth_LoginOptions(
            ApiVersion: ApiVersion,
            Credentials: try pointerManager.managedPointer(copyingValueOrNilPointer: Credentials?.buildSdkObject(pointerManager: pointerManager)),
            ScopeFlags: ScopeFlags
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Auth_LoginOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Credentials = try SwiftEOS_Auth_Credentials.init(sdkObject: sdkObject.Credentials.pointee)
        self.ScopeFlags = sdkObject.ScopeFlags
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_AUTH_LOGIN_API_LATEST,
        Credentials: SwiftEOS_Auth_Credentials?,
        ScopeFlags: EOS_EAuthScopeFlags
    ) {
        self.ApiVersion = ApiVersion
        self.Credentials = Credentials
        self.ScopeFlags = ScopeFlags
    }
}
