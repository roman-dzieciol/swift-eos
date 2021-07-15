import Foundation
import EOSSDK


/**
A unique identifier for a catalog item defined and stored with the backend catalog service.
A catalog item represents a distinct object within the catalog.  When acquired by an account, an
entitlement is granted that references a specific catalog item.
*/
public typealias SwiftEOS_Ecom_CatalogItemId = UnsafeMutablePointer<CChar>?