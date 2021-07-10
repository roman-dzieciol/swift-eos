import Foundation
import EOSSDK

/**
Contains information about a single player sanction.

- Note: Release func: ``EOS_Sanctions_PlayerSanction_Release``
*/
public struct SwiftEOS_Sanctions_PlayerSanction: SwiftEOSObject {

    /** API Version: Set this to EOS_SANCTIONS_PLAYERSANCTION_API_LATEST. */
    public let ApiVersion: Int32

    /** The POSIX timestamp when the sanction was placed */
    public let TimePlaced: Int

    /** The action associated with this sanction */
    public let Action: String?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Sanctions_PlayerSanction {
        try _tagEOS_Sanctions_PlayerSanction(
            ApiVersion: ApiVersion,
            TimePlaced: try safeNumericCast(exactly: TimePlaced),
            Action: pointerManager.managedPointerToBuffer(copyingArray: Action?.utf8CString)
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Sanctions_PlayerSanction?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.TimePlaced = try safeNumericCast(exactly: sdkObject.TimePlaced)
        self.Action = String(cString: sdkObject.Action)
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to EOS_SANCTIONS_PLAYERSANCTION_API_LATEST.
    - Parameter TimePlaced: The POSIX timestamp when the sanction was placed
    - Parameter Action: The action associated with this sanction
    */
    public init(
        ApiVersion: Int32 = EOS_SANCTIONS_PLAYERSANCTION_API_LATEST,
        TimePlaced: Int,
        Action: String?
    ) {
        self.ApiVersion = ApiVersion
        self.TimePlaced = TimePlaced
        self.Action = Action
    }
}
