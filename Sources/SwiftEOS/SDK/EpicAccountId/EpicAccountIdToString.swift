import Foundation
import EOSSDK

/**
 * Retrieve a null-terminated stringified Epic Online Services Account ID from an EOS_EpicAccountId. This is useful for replication of Epic Online Services Account IDs in multiplayer games.
 * This string will be no larger than EOS_EPICACCOUNTID_MAX_LENGTH + 1 and will only contain UTF8-encoded printable characters (excluding the null-terminator).
 * 
 * - Parameter AccountId:  The Epic Online Services Account ID for which to retrieve the stringified version.
 * - Parameter OutBuffer:  The buffer into which the character data should be written
 * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
 *                          The input buffer should include enough space to be null-terminated.
 *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer including the null termination character.
 * 
 * @return An EOS_EResult that indicates whether the Epic Online Services Account ID string was copied into the OutBuffer.
 *         EOS_Success - The OutBuffer was filled, and InOutBufferLength contains the number of characters copied into OutBuffer including the null terminator.
 *         EOS_InvalidParameters - Either OutBuffer or InOutBufferLength were passed as NULL parameters.
 *         EOS_InvalidUser - The AccountId is invalid and cannot be stringified.
 *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the Epic Online Services Account ID string. InOutBufferLength contains the required minimum length to perform the operation successfully.
 * - Parameter OutBuffer:  - array num: InOutBufferLength
 */
public func SwiftEOS_EpicAccountId_ToString(
    AccountId: EOS_EpicAccountId,
    OutBuffer: inout String?
) throws {
    try withPointerManager { pointerManager in
        try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
            try throwingSdkResult { 
                EOS_EpicAccountId_ToString(
                    AccountId,
                    OutBuffer,
                    InOutBufferLength
                ) } } }
}
