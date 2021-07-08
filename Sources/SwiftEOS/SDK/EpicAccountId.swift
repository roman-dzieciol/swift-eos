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

/**
 * 
 * Check whether or not the given Epic Online Services Account ID is considered valid
 * NOTE: This will return true for any EOS_EpicAccountId created with EOS_EpicAccountId_FromString as there is no validation
 * 
 * - Parameter AccountId:  The Epic Online Services Account ID to check for validity
 * @return EOS_TRUE if the EOS_EpicAccountId is valid, otherwise EOS_FALSE
 */
public func SwiftEOS_EpicAccountId_IsValid(
    AccountId: EOS_EpicAccountId
) throws -> Bool {
    try withPointerManager { pointerManager in
        try returningTransformedResult(
            nested: { 
                EOS_EpicAccountId_IsValid(AccountId) },
            transformedResult: { 
                try swiftBoolFromEosBool($0) }
        ) }
}

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
