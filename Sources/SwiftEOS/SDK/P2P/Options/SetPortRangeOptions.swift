import Foundation
import EOSSDK

/** Structure containing information about new port range settings. */
public struct SwiftEOS_P2P_SetPortRangeOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_P2P_SETPORTRANGE_API_LATEST.  */
    public let ApiVersion: Int32

    /** The ideal port to use for P2P traffic. The default value is 7777. If set to 0, the OS will choose a port. If set to 0, MaxAdditionalPortsToTry must be set to 0.  */
    public let Port: UInt16

    /**
     * The maximum amount of additional ports to try if Port is unavailable. Ports will be tried from Port to Port + MaxAdditionalPortsToTry
     * inclusive, until one is available or we run out of ports. If no ports are available, P2P connections will fail. The default value is 99.
     */
    public let MaxAdditionalPortsToTry: UInt16

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_P2P_SetPortRangeOptions {
        _tagEOS_P2P_SetPortRangeOptions(
            ApiVersion: ApiVersion,
            Port: Port,
            MaxAdditionalPortsToTry: MaxAdditionalPortsToTry
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_P2P_SetPortRangeOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Port = sdkObject.Port
        self.MaxAdditionalPortsToTry = sdkObject.MaxAdditionalPortsToTry
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_P2P_SETPORTRANGE_API_LATEST. 
     * - Parameter Port:  The ideal port to use for P2P traffic. The default value is 7777. If set to 0, the OS will choose a port. If set to 0, MaxAdditionalPortsToTry must be set to 0. 
     * - Parameter MaxAdditionalPortsToTry:  The maximum amount of additional ports to try if Port is unavailable. Ports will be tried from Port to Port + MaxAdditionalPortsToTry
     * inclusive, until one is available or we run out of ports. If no ports are available, P2P connections will fail. The default value is 99.
     */
    public init(
        ApiVersion: Int32 = EOS_P2P_SETPORTRANGE_API_LATEST,
        Port: UInt16,
        MaxAdditionalPortsToTry: UInt16
    ) {
        self.ApiVersion = ApiVersion
        self.Port = Port
        self.MaxAdditionalPortsToTry = MaxAdditionalPortsToTry
    }
}
