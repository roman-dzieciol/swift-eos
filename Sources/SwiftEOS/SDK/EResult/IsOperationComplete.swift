import Foundation
import EOSSDK

/**
 * Returns whether a result is to be considered the final result, or false if the callback that returned this result
 * will be called again either after some time or from another action.
 * 
 * - Parameter Result:  The result to check against being a final result for an operation
 * @return True if this result means the operation is complete, false otherwise
 */
public func SwiftEOS_EResult_IsOperationComplete(
    Result: EOS_EResult
) throws -> Bool {
    try withPointerManager { pointerManager in
        try returningTransformedResult(
            nested: { 
                EOS_EResult_IsOperationComplete(Result) },
            transformedResult: { 
                try swiftBoolFromEosBool($0) }
        ) }
}
