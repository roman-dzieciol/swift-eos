import Foundation
import EOSSDK


/**
Options for initializing defining thread affinity for use by Epic Online Services SDK.
Set the affinity to 0 to allow EOS SDK to use a platform specific default value.
*/
public struct SwiftEOS_Initialize_ThreadAffinity: SwiftEOSObject {

    /** API Version: Set this to `EOS_INITIALIZE_THREADAFFINITY_API_LATEST`. */
    public let ApiVersion: Int32

    /** Any thread related to network management that is not IO. */
    public let NetworkWork: UInt64

    /** Any thread that will interact with a storage device. */
    public let StorageIo: UInt64

    /** Any thread that will generate web socket IO. */
    public let WebSocketIo: UInt64

    /** Any thread that will generate IO related to P2P traffic and mangement. */
    public let P2PIo: UInt64

    /** Any thread that will generate http request IO. */
    public let HttpRequestIo: UInt64

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Initialize_ThreadAffinity?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.NetworkWork = sdkObject.NetworkWork
        self.StorageIo = sdkObject.StorageIo
        self.WebSocketIo = sdkObject.WebSocketIo
        self.P2PIo = sdkObject.P2PIo
        self.HttpRequestIo = sdkObject.HttpRequestIo
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Initialize_ThreadAffinity {
        _tagEOS_Initialize_ThreadAffinity(
            ApiVersion: ApiVersion,
            NetworkWork: NetworkWork,
            StorageIo: StorageIo,
            WebSocketIo: WebSocketIo,
            P2PIo: P2PIo,
            HttpRequestIo: HttpRequestIo
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_INITIALIZE_THREADAFFINITY_API_LATEST`.
    - Parameter NetworkWork: Any thread related to network management that is not IO.
    - Parameter StorageIo: Any thread that will interact with a storage device.
    - Parameter WebSocketIo: Any thread that will generate web socket IO.
    - Parameter P2PIo: Any thread that will generate IO related to P2P traffic and mangement.
    - Parameter HttpRequestIo: Any thread that will generate http request IO.
    */
    public init(
        ApiVersion: Int32 = EOS_INITIALIZE_THREADAFFINITY_API_LATEST,
        NetworkWork: UInt64,
        StorageIo: UInt64,
        WebSocketIo: UInt64,
        P2PIo: UInt64,
        HttpRequestIo: UInt64
    ) {
        self.ApiVersion = ApiVersion
        self.NetworkWork = NetworkWork
        self.StorageIo = StorageIo
        self.WebSocketIo = WebSocketIo
        self.P2PIo = P2PIo
        self.HttpRequestIo = HttpRequestIo
    }
}
