import Foundation
import EOSSDK

/**
Retrieve a null-terminated stringified Product User ID from an EOS_ProductUserId. This is useful for replication of Product User IDs in multiplayer games.
This string will be no larger than EOS_PRODUCTUSERID_MAX_LENGTH + 1 and will only contain UTF8-encoded printable characters (excluding the null-terminator).

- Parameter AccountId: The Product User ID for which to retrieve the stringified version.
- Throws: An EOS_EResult that indicates whether the Product User ID string was copied into the OutBuffer.
          EOS_Success - The OutBuffer was filled, and InOutBufferLength contains the number of characters copied into OutBuffer including the null terminator.
          EOS_InvalidParameters - Either OutBuffer or InOutBufferLength were passed as NULL parameters.
          EOS_InvalidUser - The AccountId is invalid and cannot be stringified.
          EOS_LimitExceeded - The OutBuffer is not large enough to receive the Product User ID string. InOutBufferLength contains the required minimum length to perform the operation successfully.
- Returns: The buffer into which the character data should be written
*/
public func SwiftEOS_ProductUserId_ToString(
    AccountId: EOS_ProductUserId
) throws -> String? {
    try withPointerManager { pointerManager in
        try withCCharPointerPointersReturnedAsOptionalString { OutBuffer,InOutBufferLength in
            try throwingSdkResult { 
                EOS_ProductUserId_ToString(
                    AccountId,
                    OutBuffer,
                    InOutBufferLength
                ) } } }
}
