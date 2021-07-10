import Foundation
import EOSSDK

/**
Returns a string representation of an EOS_EResult.The return value is never null.The return value must not be freed.

Example: EOS_EResult_ToString(EOS_Success) returns "EOS_Success"
*/
public func SwiftEOS_EResult_ToString(
    Result: EOS_EResult
) -> String? {
    withPointerManager { pointerManager in
        returningTransformedResult(
            nested: { 
                EOS_EResult_ToString(Result) },
            transformedResult: { 
                String(cString: $0) }
        ) }
}
