import Foundation
import EOSSDK

/** Client credentials. */
public struct SwiftEOS_Platform_ClientCredentials: SwiftEOSObject {

    /** Client ID of the service permissions entry. Set to NULL if no service permissions are used. */
    public let ClientId: String?

    /** Client secret for accessing the set of permissions. Set to NULL if no service permissions are used. */
    public let ClientSecret: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Platform_ClientCredentials?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ClientId = String(cString: sdkObject.ClientId)
        self.ClientSecret = String(cString: sdkObject.ClientSecret)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Platform_ClientCredentials {
        _tagEOS_Platform_ClientCredentials(
            ClientId: pointerManager.managedPointerToBuffer(copyingArray: ClientId?.utf8CString),
            ClientSecret: pointerManager.managedPointerToBuffer(copyingArray: ClientSecret?.utf8CString)
        )
    }

    /**
    Memberwise initializer

    - Parameter ClientId: Client ID of the service permissions entry. Set to NULL if no service permissions are used.
    - Parameter ClientSecret: Client secret for accessing the set of permissions. Set to NULL if no service permissions are used.
    */
    public init(
        ClientId: String?,
        ClientSecret: String?
    ) {
        self.ClientId = ClientId
        self.ClientSecret = ClientSecret
    }
}
