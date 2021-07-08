import Foundation
import EOSSDK

/** Data for the EOS_Mods_CopyModInfo function. */
public struct SwiftEOS_Mods_CopyModInfoOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_COPYMODINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which mods should be copied  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Type of the enumerated mod to copy  */
    public let `Type`: EOS_EModEnumerationType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_CopyModInfoOptions {
        _tagEOS_Mods_CopyModInfoOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            `Type`: `Type`
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_CopyModInfoOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.`Type` = sdkObject.`Type`
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_MODS_COPYMODINFO_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.`Type` = `Type`
    }
}

/** Output parameters for the EOS_Mods_EnumerateMods Function. These parameters are received through the callback provided to EOS_Mods_EnumerateMods */
public struct SwiftEOS_Mods_EnumerateModsCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if the enumeration was successfull, otherwise one of the error codes is returned.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user for which mod enumeration was requested  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Type of the enumerated mods  */
    public let `Type`: EOS_EModEnumerationType

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_EnumerateModsCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.`Type` = sdkObject.`Type`
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Mods_EnumerateModsCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Mods_EnumerateMods Function. */
public struct SwiftEOS_Mods_EnumerateModsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_ENUMERATEMODS_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be enumerated  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Type of the mods to enumerate  */
    public let `Type`: EOS_EModEnumerationType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_EnumerateModsOptions {
        _tagEOS_Mods_EnumerateModsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            `Type`: `Type`
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_EnumerateModsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.`Type` = sdkObject.`Type`
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_MODS_ENUMERATEMODS_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        `Type`: EOS_EModEnumerationType
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.`Type` = `Type`
    }
}

/** Output parameters for the EOS_Mods_InstallMod Function. These parameters are received through the callback provided to EOS_Mods_InstallMod */
public struct SwiftEOS_Mods_InstallModCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if the installation was successfull, otherwise one of the error codes is returned.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user for which mod installation was requested  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Mod for which installation was requested  */
    public let Mod: SwiftEOS_Mod_Identifier?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_InstallModCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Mods_InstallModCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Mods_InstallMod Function. */
public struct SwiftEOS_Mods_InstallModOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_INSTALLMOD_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be installed  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The mod to install  */
    public let Mod: SwiftEOS_Mod_Identifier?

    /** Indicates whether the mod should be uninstalled after exiting the game or not.  */
    public let bRemoveAfterExit: Bool

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_InstallModOptions {
        try _tagEOS_Mods_InstallModOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mod: try pointerManager.managedPointer(copyingValueOrNilPointer: Mod?.buildSdkObject(pointerManager: pointerManager)),
            bRemoveAfterExit: eosBoolFromSwiftBool(bRemoveAfterExit)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_InstallModOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
        self.bRemoveAfterExit = try swiftBoolFromEosBool(sdkObject.bRemoveAfterExit)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_MODS_INSTALLMOD_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?,
        bRemoveAfterExit: Bool
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mod = Mod
        self.bRemoveAfterExit = bRemoveAfterExit
    }
}

/**
 * Data for the EOS_Mods_CopyModInfo function.
 * 
 * @see EOS_Mods_CopyModInfo
 * @see EOS_Mods_ModInfo_Release
 * 
 * - see: release func: EOS_Mods_ModInfo_Release
 */
public struct SwiftEOS_Mods_ModInfo: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_MODINFO_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * The count of enumerated mods 
     * - array buffer: Mods
     */
    public let ModsCount: Int

    /**
     * The array of enumerated mods or NULL if no such type of mods were enumerated 
     * - array num: ModsCount
     */
    public let Mods: [SwiftEOS_Mod_Identifier]?

    /** Type of the mods  */
    public let `Type`: EOS_EModEnumerationType

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_ModInfo {
        try _tagEOS_Mods_ModInfo(
            ApiVersion: ApiVersion,
            ModsCount: try safeNumericCast(exactly: ModsCount),
            Mods: try pointerManager.managedMutablePointerToBuffer(copyingArray: Mods?.map { 
                    try $0.buildSdkObject(pointerManager: pointerManager) }),
            `Type`: `Type`
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_ModInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.ModsCount = try safeNumericCast(exactly: sdkObject.ModsCount)
        self.Mods = try sdkObject.Mods.array(safeNumericCast(exactly: sdkObject.ModsCount)).compactMap { 
            try SwiftEOS_Mod_Identifier.init(sdkObject: $0.pointee) }
        self.`Type` = sdkObject.`Type`
    }
}

/** Output parameters for the EOS_Mods_UninstallMod Function. These parameters are received through the callback provided to EOS_Mods_UninstallMod */
public struct SwiftEOS_Mods_UninstallModCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if the uninstallation was successfull, otherwise one of the error codes is returned.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user for which mod uninstallation was requested  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Mod for which uninstallation was requested  */
    public let Mod: SwiftEOS_Mod_Identifier?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_UninstallModCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Mods_UninstallModCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Mods_UninstallMod Function. */
public struct SwiftEOS_Mods_UninstallModOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_UNINSTALLMOD_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be uninstalled  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The mod to uninstall  */
    public let Mod: SwiftEOS_Mod_Identifier?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_UninstallModOptions {
        try _tagEOS_Mods_UninstallModOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mod: try pointerManager.managedPointer(copyingValueOrNilPointer: Mod?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_UninstallModOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_MODS_UNINSTALLMOD_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mod = Mod
    }
}

/** Output parameters for the EOS_Mods_UpdateMod Function. These parameters are received through the callback provided to EOS_Mods_UpdateMod */
public struct SwiftEOS_Mods_UpdateModCallbackInfo {

    /** Result code for the operation. EOS_Success is returned if the request to update was successfull, otherwise one of the error codes is returned.  */
    public let ResultCode: EOS_EResult

    /** The Epic Online Services Account ID of the user for which mod update was requested  */
    public let LocalUserId: EOS_EpicAccountId?

    /** Mod for which update was requested  */
    public let Mod: SwiftEOS_Mod_Identifier?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_UpdateModCallbackInfo?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ResultCode = sdkObject.ResultCode
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /** Send completion using the pointer to C callback info provided */
    public static func sendCompletion(
        _ sdkCallbackInfoPointer: UnsafePointer<_tagEOS_Mods_UpdateModCallbackInfo>?
    ) {
        guard let sdkCallbackInfoPointer = sdkCallbackInfoPointer else { return }
        guard let callback = __SwiftEOS__CompletionCallback<Self>.from(pointer: sdkCallbackInfoPointer.pointee.ClientData) else { return }
        guard let callbackInfo = try? Self.init(sdkObject: sdkCallbackInfoPointer.pointee) else { return }
        callback.completion(callbackInfo)
    }
}

/** Input parameters for the EOS_Mods_UpdateMod Function. */
public struct SwiftEOS_Mods_UpdateModOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_MODS_UPDATEMOD_API_LATEST.  */
    public let ApiVersion: Int32

    /** The Epic Online Services Account ID of the user for which the mod should be updated  */
    public let LocalUserId: EOS_EpicAccountId?

    /** The mod to update  */
    public let Mod: SwiftEOS_Mod_Identifier?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mods_UpdateModOptions {
        try _tagEOS_Mods_UpdateModOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            Mod: try pointerManager.managedPointer(copyingValueOrNilPointer: Mod?.buildSdkObject(pointerManager: pointerManager))
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mods_UpdateModOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.Mod = try SwiftEOS_Mod_Identifier.init(sdkObject: sdkObject.Mod.pointee)
    }

    /** Memberwise initializer */
    public init(
        ApiVersion: Int32 = EOS_MODS_UPDATEMOD_API_LATEST,
        LocalUserId: EOS_EpicAccountId?,
        Mod: SwiftEOS_Mod_Identifier?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.Mod = Mod
    }
}
