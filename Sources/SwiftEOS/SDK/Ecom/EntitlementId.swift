import Foundation
import EOSSDK


/**
A unique identifier for an entitlement owned by an account.  An entitlement is always associated
with a single account.  The entitlement ID is provided to allow redeeming the entitlement as
well as identify individual entitlement grants.

- SeeAlso: `EOS_Ecom_QueryEntitlements`
- SeeAlso: `EOS_Ecom_RedeemEntitlements`
*/
public typealias SwiftEOS_Ecom_EntitlementId = UnsafeMutablePointer<CChar>?