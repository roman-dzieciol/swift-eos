import Foundation
import EOSSDK

/**
 * Retrieve a null-terminated stringified Epic Online Services Account ID from an EOS_EpicAccountId. This is useful for replication of Epic Online Services Account IDs in multiplayer games.
 * This string will be no larger than EOS_EPICACCOUNTID_MAX_LENGTH + 1 and will only contain UTF8-encoded printable characters (excluding the null-terminator).
 * 
 * - Parameter AccountId:  The Epic Online Services Account ID for which to retrieve the stringified version.
 * 
 * @return An EOS_EResult that indicates whether the Epic Online Services Account ID string was copied into the OutBuffer.
 *         EOS_Success - The OutBuffer was filled, and InOutBufferLength contains the number of characters copied into OutBuffer including the null terminator.
 *         EOS_InvalidParameters - Either OutBuffer or InOutBufferLength were passed as NULL parameters.
 *         EOS_InvalidUser - The AccountId is invalid and cannot be stringified.
 *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the Epic Online Services Account ID string. InOutBufferLength contains the required minimum length to perform the operation successfully.
 */
public func SwiftEOS_EpicAccountId_ToString(
    AccountId: EOS_EpicAccountId
) throws -> String? {
    try withPointerManager { pointerManager in
        try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
            try throwingSdkResult { 
                EOS_EpicAccountId_ToString(
                    AccountId,
                    OutBuffer,
                    InOutBufferLength
                ) } } }
}
