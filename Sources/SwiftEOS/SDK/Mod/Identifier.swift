import Foundation
import EOSSDK


/** `EOS_Mod_Identifier` is used to identify a mod. */
public struct SwiftEOS_Mod_Identifier: SwiftEOSObject {

    /** API Version: Set this to `EOS_MOD_IDENTIFIER_API_LATEST`. */
    public let ApiVersion: Int32

    /** Item id of the Mod */
    public let NamespaceId: String?

    /** Artifact id of the Mod */
    public let ItemId: String?
    public let ArtifactId: String?

    /** Represent mod item title. */
    public let Title: String?

    /** Represent mod item version. */
    public let Version: String?

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Mod_Identifier?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.NamespaceId = stringFromOptionalCStringPointer(sdkObject.NamespaceId)
        self.ItemId = stringFromOptionalCStringPointer(sdkObject.ItemId)
        self.ArtifactId = stringFromOptionalCStringPointer(sdkObject.ArtifactId)
        self.Title = stringFromOptionalCStringPointer(sdkObject.Title)
        self.Version = stringFromOptionalCStringPointer(sdkObject.Version)
    }

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Mod_Identifier {
        _tagEOS_Mod_Identifier(
            ApiVersion: ApiVersion,
            NamespaceId: pointerManager.managedPointerToBuffer(copyingArray: NamespaceId?.utf8CString),
            ItemId: pointerManager.managedPointerToBuffer(copyingArray: ItemId?.utf8CString),
            ArtifactId: pointerManager.managedPointerToBuffer(copyingArray: ArtifactId?.utf8CString),
            Title: pointerManager.managedPointerToBuffer(copyingArray: Title?.utf8CString),
            Version: pointerManager.managedPointerToBuffer(copyingArray: Version?.utf8CString)
        )
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_MOD_IDENTIFIER_API_LATEST`.
    - Parameter NamespaceId: Item id of the Mod
    - Parameter ItemId: Artifact id of the Mod
    - Parameter Title: Represent mod item title.
    - Parameter Version: Represent mod item version.
    */
    public init(
        ApiVersion: Int32 = EOS_MOD_IDENTIFIER_API_LATEST,
        NamespaceId: String?,
        ItemId: String?,
        ArtifactId: String?,
        Title: String?,
        Version: String?
    ) {
        self.ApiVersion = ApiVersion
        self.NamespaceId = NamespaceId
        self.ItemId = ItemId
        self.ArtifactId = ArtifactId
        self.Title = Title
        self.Version = Version
    }
}
