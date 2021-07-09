import Foundation
import EOSSDK

/**
 * Retrieve an EOS_EpicAccountId from a raw string representing an Epic Online Services Account ID. The input string must be null-terminated.
 * NOTE: There is no validation on the string format, this should only be used with values serialized from legitimate sources such as EOS_EpicAccountId_ToString
 * 
 * - Parameter AccountIdString:  The stringified account ID for which to retrieve the Epic Online Services Account ID
 * @return The EOS_EpicAccountId that corresponds to the AccountIdString
 */
public func SwiftEOS_EpicAccountId_FromString(
    AccountIdString: String?
) -> EOS_EpicAccountId {
    withPointerManager { pointerManager in
        withTransformed(
            value: AccountIdString,
            transform: { AccountIdString in
                pointerManager.managedPointerToBuffer(copyingArray: AccountIdString?.utf8CString) },
            nested: { AccountIdString in
                EOS_EpicAccountId_FromString(AccountIdString) }
        ) }
}
