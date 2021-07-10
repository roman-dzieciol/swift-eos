import Foundation
import EOSSDK

/** Input parameters for the `EOS_Connect_TransferDeviceIdAccount` Function. */
public struct SwiftEOS_Connect_TransferDeviceIdAccountOptions: SwiftEOSObject {

    /** API Version: Set this to `EOS_CONNECT_TRANSFERDEVICEIDACCOUNT_API_LATEST`. */
    public let ApiVersion: Int32

    /**
    The primary product user id, currently logged in, that is already associated with a real external user account (such as Epic Games, PlayStation(TM)Network, Xbox Live and other).

    The account linking keychain that owns this product user will be preserved and receive
    the Device ID login credentials under it.
    */
    public let PrimaryLocalUserId: EOS_ProductUserId?

    /**
    The product user id, currently logged in, that has been originally created using the anonymous local Device ID login type,
    and whose Device ID login will be transferred to the keychain of the PrimaryLocalUserId.
    */
    public let LocalDeviceUserId: EOS_ProductUserId?

    /**
    Specifies which `EOS_ProductUserId` (i.e. game progression) will be preserved in the operation.

    After a successful transfer operation, subsequent logins using the same external account or
    the same local Device ID login will return user session for the ProductUserIdToPreserve.

    Set to either PrimaryLocalUserId or LocalDeviceUserId.
    */
    public let ProductUserIdToPreserve: EOS_ProductUserId?

    /**
    Returns SDK Object initialized with values from this object

    Pointers in the SDK object are managed by provided SwiftEOS__PointerManager object
    */
    public func buildSdkObject(
        pointerManager: SwiftEOS__PointerManager
    ) throws -> _tagEOS_Connect_TransferDeviceIdAccountOptions {
        _tagEOS_Connect_TransferDeviceIdAccountOptions(
            ApiVersion: ApiVersion,
            PrimaryLocalUserId: PrimaryLocalUserId,
            LocalDeviceUserId: LocalDeviceUserId,
            ProductUserIdToPreserve: ProductUserIdToPreserve
        )
    }

    /** Initialize from SDK object */
    public init?(
        sdkObject: _tagEOS_Connect_TransferDeviceIdAccountOptions?
    ) throws {
        guard let sdkObject = sdkObject else { return nil }
        self.ApiVersion = sdkObject.ApiVersion
        self.PrimaryLocalUserId = sdkObject.PrimaryLocalUserId
        self.LocalDeviceUserId = sdkObject.LocalDeviceUserId
        self.ProductUserIdToPreserve = sdkObject.ProductUserIdToPreserve
    }

    /**
    Memberwise initializer

    - Parameter ApiVersion: API Version: Set this to `EOS_CONNECT_TRANSFERDEVICEIDACCOUNT_API_LATEST`.
    - Parameter PrimaryLocalUserId: The primary product user id, currently logged in, that is already associated with a real external user account (such as Epic Games, PlayStation(TM)Network, Xbox Live and other).
    The account linking keychain that owns this product user will be preserved and receive
    the Device ID login credentials under it.
    - Parameter LocalDeviceUserId: The product user id, currently logged in, that has been originally created using the anonymous local Device ID login type,
    and whose Device ID login will be transferred to the keychain of the PrimaryLocalUserId.
    - Parameter ProductUserIdToPreserve: Specifies which `EOS_ProductUserId` (i.e. game progression) will be preserved in the operation.
    After a successful transfer operation, subsequent logins using the same external account or
    the same local Device ID login will return user session for the ProductUserIdToPreserve.
    Set to either PrimaryLocalUserId or LocalDeviceUserId.
    */
    public init(
        ApiVersion: Int32 = EOS_CONNECT_TRANSFERDEVICEIDACCOUNT_API_LATEST,
        PrimaryLocalUserId: EOS_ProductUserId?,
        LocalDeviceUserId: EOS_ProductUserId?,
        ProductUserIdToPreserve: EOS_ProductUserId?
    ) {
        self.ApiVersion = ApiVersion
        self.PrimaryLocalUserId = PrimaryLocalUserId
        self.LocalDeviceUserId = LocalDeviceUserId
        self.ProductUserIdToPreserve = ProductUserIdToPreserve
    }
}
