import Foundation
import EOSSDK

/**
 * Encode a byte array into hex encoded string
 * 
 * @return An EOS_EResult that indicates whether the byte array was converted and copied into the OutBuffer.
 *         EOS_Success if the encoding was successful and passed out in OutBuffer
 *         EOS_InvalidParameters if you pass a null pointer on invalid length for any of the parameters
 *         EOS_LimitExceeded - The OutBuffer is not large enough to receive the encoding. InOutBufferLength contains the required minimum length to perform the operation successfully.
 * - Parameter ByteArray:  - array num: Length
 * - Parameter OutBuffer:  - array num: InOutBufferLength
 */
public func SwiftEOS_ByteArray_ToString(
    ByteArray: [UInt8]?,
    OutBuffer: inout String?
) throws {
    try withPointerManager { pointerManager in
        try withCCharPointerPointersFromInOutOptionalString(inoutOptionalString: &OutBuffer) { OutBuffer,InOutBufferLength in
            try withTrivialPointersFromOptionalTrivialArray(ByteArray, managedBy: pointerManager) { ByteArray,Length in
                try throwingSdkResult { 
                    EOS_ByteArray_ToString(
                        ByteArray,
                        Length,
                        OutBuffer,
                        InOutBufferLength
                    ) } } } }
}
