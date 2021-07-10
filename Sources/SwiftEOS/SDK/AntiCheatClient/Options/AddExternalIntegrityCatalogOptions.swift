import Foundation
import EOSSDK
public struct SwiftEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ANTICHEATCLIENT_ADDEXTERNALINTEGRITYCATALOG_API_LATEST. */
    public let ApiVersion: Int32

    /** UTF-8 path to the .bin catalog file to add */
    public let PathToBinFile: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions {
        _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions(
            ApiVersion: ApiVersion,
            PathToBinFile: pointerManager.managedPointerToBuffer(copyingArray: PathToBinFile?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_AntiCheatClient_AddExternalIntegrityCatalogOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PathToBinFile = String(cString: sdkObject.PathToBinFile)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_ANTICHEATCLIENT_ADDEXTERNALINTEGRITYCATALOG_API_LATEST.
    - Parameter PathToBinFile: UTF-8 path to the .bin catalog file to add
    */
    public init(
        ApiVersion: Int32 = EOS_ANTICHEATCLIENT_ADDEXTERNALINTEGRITYCATALOG_API_LATEST,
        PathToBinFile: String?
    ) {
        self.ApiVersion = ApiVersion
        self.PathToBinFile = PathToBinFile
    }
}
