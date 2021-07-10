import Foundation
import EOSSDK

/** Input parameters for the EOS_Achievements_QueryDefinitions function. */
public struct SwiftEOS_Achievements_QueryDefinitionsOptions: SwiftEOSObject {

    /** API Version: Set this to EOS_ACHIEVEMENTS_QUERYDEFINITIONS_API_LATEST.  */
    public let ApiVersion: Int32

    /**
     * Product User ID for user who is querying definitions.
     * The localized text returned will be based on the locale code of the given user if they have a linked Epic Online Services Account ID.
     * The localized text returned can also be overridden using EOS_Platform_SetOverrideLocaleCode to override the locale.
     * If the locale code is not overridden and LocalUserId is not valid, default text will be returned.
     */
    public let LocalUserId: EOS_ProductUserId?

    /** Deprecated  */
    public let EpicUserId_DEPRECATED: EOS_EpicAccountId?

    /**
     * Deprecated 
     * 
     * - Note: ``EOS/_tagEOS_Achievements_QueryDefinitionsOptions/HiddenAchievementsCount_DEPRECATED``:
     * Deprecated 
     */
    public let HiddenAchievementIds_DEPRECATED: [String]?

    /**
     * Returns SDK Object initialized with values from this object
     * 
     * Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
     */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Achievements_QueryDefinitionsOptions {
        try _tagEOS_Achievements_QueryDefinitionsOptions(
            ApiVersion: ApiVersion,
            LocalUserId: LocalUserId,
            EpicUserId_DEPRECATED: EpicUserId_DEPRECATED,
            HiddenAchievementIds_DEPRECATED: pointerManager.managedMutablePointerToBufferOfPointers(copyingArray: HiddenAchievementIds_DEPRECATED?.map { 
                    $0.utf8CString }),
            HiddenAchievementsCount_DEPRECATED: try safeNumericCast(exactly: HiddenAchievementIds_DEPRECATED?.count ?? .zero)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Achievements_QueryDefinitionsOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.LocalUserId = sdkObject.LocalUserId
        self.EpicUserId_DEPRECATED = sdkObject.EpicUserId_DEPRECATED
        self.HiddenAchievementIds_DEPRECATED = try stringArrayFromCCharPointerPointer(
            pointer: sdkObject.HiddenAchievementIds_DEPRECATED,
            count: sdkObject.HiddenAchievementsCount_DEPRECATED
        )
    }

    /**
     * Memberwise initializer
     * - Parameter ApiVersion:  API Version: Set this to EOS_ACHIEVEMENTS_QUERYDEFINITIONS_API_LATEST. 
     * - Parameter LocalUserId:  Product User ID for user who is querying definitions.
     * The localized text returned will be based on the locale code of the given user if they have a linked Epic Online Services Account ID.
     * The localized text returned can also be overridden using EOS_Platform_SetOverrideLocaleCode to override the locale.
     * If the locale code is not overridden and LocalUserId is not valid, default text will be returned.
     * - Parameter EpicUserId_DEPRECATED:  Deprecated 
     * - Parameter HiddenAchievementIds_DEPRECATED:  Deprecated 
     * 
     * - Note: ``EOS/_tagEOS_Achievements_QueryDefinitionsOptions/HiddenAchievementsCount_DEPRECATED``:
     * Deprecated 
     */
    public init(
        ApiVersion: Int32 = EOS_ACHIEVEMENTS_QUERYDEFINITIONS_API_LATEST,
        LocalUserId: EOS_ProductUserId?,
        EpicUserId_DEPRECATED: EOS_EpicAccountId?,
        HiddenAchievementIds_DEPRECATED: [String]?
    ) {
        self.ApiVersion = ApiVersion
        self.LocalUserId = LocalUserId
        self.EpicUserId_DEPRECATED = EpicUserId_DEPRECATED
        self.HiddenAchievementIds_DEPRECATED = HiddenAchievementIds_DEPRECATED
    }
}
