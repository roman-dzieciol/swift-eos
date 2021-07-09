import Foundation
import EOSSDK

/**
 * Retrieve a null-terminated stringified continuance token from an EOS_ContinuanceToken.
 * To get the required buffer size, call once with OutBuffer set to NULL, InOutBufferLength will contain the buffer size needed.
 * Call again with valid params to get the stringified continuance token which will only contain UTF8-encoded printable characters (excluding the null-terminator).
 * 
 * - Parameter ContinuanceToken:  The continuance token for which to retrieve the stringified version.
 * - Parameter OutBuffer:  The buffer into which the character data should be written
 * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
 *                          The input buffer should include enough space to be null-terminated.
 *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer including the null termination character.
 * 
 * @return An EOS_EResult that indicates whether the continuance token string was copied into the OutBuffer.
 *         EOS_Success - The OutBuffer was filled, and InOutBufferLength contains the number of characters copied into OutBuffer including the null terminator.
 *         EOS_InvalidParameters - Either OutBuffer or InOutBufferLength were passed as NULL parameters.
 *         EOS_InvalidUser - The AccountId is invalid and cannot be stringified.
 *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the continuance token string. InOutBufferLength contains the required minimum length to perform the operation successfully.
 */
public func SwiftEOS_ContinuanceToken_ToString(
    ContinuanceToken: EOS_ContinuanceToken
) throws -> String? {
    try withPointerManager { pointerManager in
        try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
            try throwingSdkResult { 
                EOS_ContinuanceToken_ToString(
                    ContinuanceToken,
                    OutBuffer,
                    InOutBufferLength
                ) } } }
}
