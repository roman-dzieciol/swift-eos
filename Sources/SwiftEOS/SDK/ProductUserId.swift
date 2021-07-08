import Foundation
import EOSSDK

/**
 * Retrieve an EOS_ProductUserId from a raw string representing an Epic Online Services Product User ID. The input string must be null-terminated.
 * NOTE: There is no validation on the string format, this should only be used with values serialized from legitimate sources such as EOS_ProductUserId_ToString
 * 
 * - Parameter ProductUserIdString:  The stringified product user ID for which to retrieve the Epic Online Services Product User ID
 * @return The EOS_ProductUserId that corresponds to the ProductUserIdString
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

/**
 * Check whether or not the given account unique ID is considered valid
 * NOTE: This will return true for any EOS_ProductUserId created with EOS_ProductUserId_FromString as there is no validation
 * 
 * - Parameter AccountId:  The Product User ID to check for validity
 * @return EOS_TRUE if the EOS_ProductUserId is valid, otherwise EOS_FALSE
 */
public func SwiftEOS_ProductUserId_IsValid(
    AccountId: EOS_ProductUserId
) throws -> Bool {
    try withPointerManager { pointerManager in
        try returningTransformedResult(
            nested: { 
                EOS_ProductUserId_IsValid(AccountId) },
            transformedResult: { 
                try swiftBoolFromEosBool($0) }
        ) }
}

/**
 * Retrieve a null-terminated stringified Product User ID from an EOS_ProductUserId. This is useful for replication of Product User IDs in multiplayer games.
 * This string will be no larger than EOS_PRODUCTUSERID_MAX_LENGTH + 1 and will only contain UTF8-encoded printable characters (excluding the null-terminator).
 * 
 * - Parameter AccountId:  The Product User ID for which to retrieve the stringified version.
 * - Parameter OutBuffer:  The buffer into which the character data should be written
 * - Parameter InOutBufferLength:  The size of the OutBuffer in characters.
 *                          The input buffer should include enough space to be null-terminated.
 *                          When the function returns, this parameter will be filled with the length of the string copied into OutBuffer including the null termination character.
 * 
 * @return An EOS_EResult that indicates whether the Product User ID string was copied into the OutBuffer.
 *         EOS_Success - The OutBuffer was filled, and InOutBufferLength contains the number of characters copied into OutBuffer including the null terminator.
 *         EOS_InvalidParameters - Either OutBuffer or InOutBufferLength were passed as NULL parameters.
 *         EOS_InvalidUser - The AccountId is invalid and cannot be stringified.
 *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the Product User ID string. InOutBufferLength contains the required minimum length to perform the operation successfully.
 * - Parameter OutBuffer:  - array num: InOutBufferLength
 */
public func SwiftEOS_ProductUserId_ToString(
    AccountId: EOS_ProductUserId,
    OutBuffer: inout String?
) throws {
    try withPointerManager { pointerManager in
        try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
            try throwingSdkResult { 
                EOS_ProductUserId_ToString(
                    AccountId,
                    OutBuffer,
                    InOutBufferLength
                ) } } }
}
