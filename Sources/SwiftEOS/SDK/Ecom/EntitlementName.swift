import Foundation
import EOSSDK

/**
An identifier which is defined on a catalog item and stored with the backend catalog service.
The entitlement name may not be unique.  A catalog may be configured with multiple items with the
same entitlement name in order to define a logical grouping of entitlements.  This is used to
retrieve all entitlements granted to an account grouped in this way.

- SeeAlso: `EOS_Ecom_QueryEntitlements`
*/
public typealias SwiftEOS_Ecom_EntitlementName = UnsafeMutablePointer<CChar>?