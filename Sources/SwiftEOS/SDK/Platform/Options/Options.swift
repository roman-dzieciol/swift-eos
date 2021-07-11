import Foundation
import EOSSDK

/** Platform options for `EOS_Platform_Create`. */
public struct SwiftEOS_Platform_Options: SwiftEOSObject {

    /** API Version: Set this to `EOS_PLATFORM_OPTIONS_API_LATEST`. */
    public let ApiVersion: Int32

    /** A reserved field that should always be nulled. */
    public let Reserved: UnsafeMutableRawPointer?

    /** The product ID for the running application, found on the dev portal */
    public let ProductId: String?

    /** The sandbox ID for the running application, found on the dev portal */
    public let SandboxId: String?

    /** Set of service permissions associated with the running application */
    public let ClientCredentials: SwiftEOS_Platform_ClientCredentials

    /** Is this running as a server */
    public let bIsServer: Bool

    /** Used by Player Data Storage and Title Storage. Must be null initialized if unused. 256-bit Encryption Key for file encryption in hexadecimal format (64 hex chars) */
    public let EncryptionKey: String?

    /** The override country code to use for the logged in user. (`EOS_COUNTRYCODE_MAX_LENGTH`) */
    public let OverrideCountryCode: String?

    /** The override locale code to use for the logged in user. This follows ISO 639. (`EOS_LOCALECODE_MAX_LENGTH`) */
    public let OverrideLocaleCode: String?

    /** The deployment ID for the running application, found on the dev portal */
    public let DeploymentId: String?

    /** Platform creation flags, e.g. `EOS_PF_LOADING_IN_EDITOR`. This is a bitwise-or union of the defined flags. */
    public let Flags: UInt64

    /** Used by Player Data Storage and Title Storage. Must be null initialized if unused. Cache directory path. Absolute path to the folder that is going to be used for caching temporary data. The path is created if it's missing. */
    public let CacheDirectory: String?

    /**
    A budget, measured in milliseconds, for `EOS_Platform_Tick` to do its work. When the budget is met or exceeded (or if no work is available), `EOS_Platform_Tick` will return.
    This allows your game to amortize the cost of SDK work across multiple frames in the event that a lot of work is queued for processing.
    Zero is interpreted as "perform all available work".
    */
    public let TickBudgetInMilliseconds: Int

    /** RTC options. Setting to NULL will disable RTC features (e.g. voice) */
    public let RTCOptions: SwiftEOS_Platform_RTCOptions?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Platform_Options {
        try _tagEOS_Platform_Options(
            ApiVersion: ApiVersion,
            Reserved: nil,
            ProductId: pointerManager.managedPointerToBuffer(copyingArray: ProductId?.utf8CString),
            SandboxId: pointerManager.managedPointerToBuffer(copyingArray: SandboxId?.utf8CString),
            ClientCredentials: ClientCredentials.buildSdkObject(pointerManager: pointerManager),
            bIsServer: eosBoolFromSwiftBool(bIsServer),
            EncryptionKey: pointerManager.managedPointerToBuffer(copyingArray: EncryptionKey?.utf8CString),
            OverrideCountryCode: pointerManager.managedPointerToBuffer(copyingArray: OverrideCountryCode?.utf8CString),
            OverrideLocaleCode: pointerManager.managedPointerToBuffer(copyingArray: OverrideLocaleCode?.utf8CString),
            DeploymentId: pointerManager.managedPointerToBuffer(copyingArray: DeploymentId?.utf8CString),
            Flags: Flags,
            CacheDirectory: pointerManager.managedPointerToBuffer(copyingArray: CacheDirectory?.utf8CString),
            TickBudgetInMilliseconds: try safeNumericCast(exactly: TickBudgetInMilliseconds),
            RTCOptions: try pointerManager.managedPointer(copyingValueOrNilPointer: RTCOptions?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Platform_Options?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.Reserved = sdkObject.Reserved
        self.ProductId = String(cString: sdkObject.ProductId)
        self.SandboxId = String(cString: sdkObject.SandboxId)
        self.ClientCredentials = try SwiftEOS_Platform_ClientCredentials(sdkObject: sdkObject.ClientCredentials)!
        self.bIsServer = try swiftBoolFromEosBool(sdkObject.bIsServer)
        self.EncryptionKey = String(cString: sdkObject.EncryptionKey)
        self.OverrideCountryCode = String(cString: sdkObject.OverrideCountryCode)
        self.OverrideLocaleCode = String(cString: sdkObject.OverrideLocaleCode)
        self.DeploymentId = String(cString: sdkObject.DeploymentId)
        self.Flags = sdkObject.Flags
        self.CacheDirectory = String(cString: sdkObject.CacheDirectory)
        self.TickBudgetInMilliseconds = try safeNumericCast(exactly: sdkObject.TickBudgetInMilliseconds)
        self.RTCOptions = try SwiftEOS_Platform_RTCOptions.init(sdkObject: sdkObject.RTCOptions?.pointee)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_PLATFORM_OPTIONS_API_LATEST`.
    - Parameter Reserved: A reserved field that should always be nulled.
    - Parameter ProductId: The product ID for the running application, found on the dev portal
    - Parameter SandboxId: The sandbox ID for the running application, found on the dev portal
    - Parameter ClientCredentials: Set of service permissions associated with the running application
    - Parameter bIsServer: Is this running as a server
    - Parameter EncryptionKey: Used by Player Data Storage and Title Storage. Must be null initialized if unused. 256-bit Encryption Key for file encryption in hexadecimal format (64 hex chars)
    - Parameter OverrideCountryCode: The override country code to use for the logged in user. (`EOS_COUNTRYCODE_MAX_LENGTH`)
    - Parameter OverrideLocaleCode: The override locale code to use for the logged in user. This follows ISO 639. (`EOS_LOCALECODE_MAX_LENGTH`)
    - Parameter DeploymentId: The deployment ID for the running application, found on the dev portal
    - Parameter Flags: Platform creation flags, e.g. `EOS_PF_LOADING_IN_EDITOR`. This is a bitwise-or union of the defined flags.
    - Parameter CacheDirectory: Used by Player Data Storage and Title Storage. Must be null initialized if unused. Cache directory path. Absolute path to the folder that is going to be used for caching temporary data. The path is created if it's missing.
    - Parameter TickBudgetInMilliseconds: A budget, measured in milliseconds, for `EOS_Platform_Tick` to do its work. When the budget is met or exceeded (or if no work is available), `EOS_Platform_Tick` will return.
    This allows your game to amortize the cost of SDK work across multiple frames in the event that a lot of work is queued for processing.
    Zero is interpreted as "perform all available work".
    - Parameter RTCOptions: RTC options. Setting to NULL will disable RTC features (e.g. voice)
    */
    public init(
        ApiVersion: Int32 = EOS_PLATFORM_OPTIONS_API_LATEST,
        Reserved: UnsafeMutableRawPointer?,
        ProductId: String?,
        SandboxId: String?,
        ClientCredentials: SwiftEOS_Platform_ClientCredentials,
        bIsServer: Bool,
        EncryptionKey: String?,
        OverrideCountryCode: String?,
        OverrideLocaleCode: String?,
        DeploymentId: String?,
        Flags: UInt64,
        CacheDirectory: String?,
        TickBudgetInMilliseconds: Int,
        RTCOptions: SwiftEOS_Platform_RTCOptions?
    ) {
        self.ApiVersion = ApiVersion
        self.Reserved = Reserved
        self.ProductId = ProductId
        self.SandboxId = SandboxId
        self.ClientCredentials = ClientCredentials
        self.bIsServer = bIsServer
        self.EncryptionKey = EncryptionKey
        self.OverrideCountryCode = OverrideCountryCode
        self.OverrideLocaleCode = OverrideLocaleCode
        self.DeploymentId = DeploymentId
        self.Flags = Flags
        self.CacheDirectory = CacheDirectory
        self.TickBudgetInMilliseconds = TickBudgetInMilliseconds
        self.RTCOptions = RTCOptions
    }
}
