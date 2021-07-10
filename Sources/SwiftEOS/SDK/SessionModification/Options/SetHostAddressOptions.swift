import Foundation
import EOSSDK

/** Input parameters for the EOS_SessionModification_SetHostAddress function. */
public struct SwiftEOS_SessionModification_SetHostAddressOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST.  */
    public let ApiVersion: Int32

    /** A string representing the host address for the session, its meaning is up to the application  */
    public let HostAddress: String?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_SessionModification_SetHostAddressOptions {
        _tagEOS_SessionModification_SetHostAddressOptions(
            ApiVersion: ApiVersion,
            HostAddress: pointerManager.managedPointerToBuffer(copyingArray: HostAddress?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_SessionModification_SetHostAddressOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.HostAddress = String(cString: sdkObject.HostAddress)
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST. 
     * - Parameter HostAddress:  A string representing the host address for the session, its meaning is up to the application 
     */
    public init(
        ApiVersion: Int32 = EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST,
        HostAddress: String?
    ) {
        self.ApiVersion = ApiVersion
        self.HostAddress = HostAddress
    }
}
