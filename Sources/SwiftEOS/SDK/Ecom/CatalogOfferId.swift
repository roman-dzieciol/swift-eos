import Foundation
import EOSSDK


/**
A unique identifier for a catalog offer defined and stored with the backend catalog service.
A catalog offer is a purchasable collection of 1 or more items, associated with a price (which
could be 0).  When an offer is purchased an entitlement is granted for each of the items
referenced by the offer.
*/
public typealias SwiftEOS_Ecom_CatalogOfferId = UnsafeMutablePointer<CChar>?