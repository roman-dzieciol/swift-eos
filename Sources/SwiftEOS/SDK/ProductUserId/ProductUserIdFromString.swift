import Foundation
import EOSSDK

/**
 * Retrieve an EOS_ProductUserId from a raw string representing an Epic Online Services Product User ID. The input string must be null-terminated.
 * NOTE: There is no validation on the string format, this should only be used with values serialized from legitimate sources such as EOS_ProductUserId_ToString
 * 
 * - Parameter ProductUserIdString:  The stringified product user ID for which to retrieve the Epic Online Services Product User ID
 * - Returns:  The EOS_ProductUserId that corresponds to the ProductUserIdString
 */
public func SwiftEOS_ProductUserId_FromString(
    ProductUserIdString: String?
) -> EOS_ProductUserId {
    withPointerManager { pointerManager in
        withTransformed(
            value: ProductUserIdString,
            transform: { ProductUserIdString in
                pointerManager.managedPointerToBuffer(copyingArray: ProductUserIdString?.utf8CString) },
            nested: { ProductUserIdString in
                EOS_ProductUserId_FromString(ProductUserIdString) }
        ) }
}
