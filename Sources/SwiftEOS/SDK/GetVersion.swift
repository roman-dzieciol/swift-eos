import Foundation
import EOSSDK

/** Get the version of the EOSSDK binary */
public func SwiftEOS_GetVersion() -> String? {
    withPointerManager { pointerManager in
        returningTransformedResult(
            nested: { 
                EOS_GetVersion() },
            transformedResult: { 
                stringFromOptionalCStringPointer($0) }
        ) }
}
