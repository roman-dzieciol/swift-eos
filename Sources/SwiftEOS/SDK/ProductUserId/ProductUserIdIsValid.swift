import Foundation
import EOSSDK


/**
Check whether or not the given account unique ID is considered valid
NOTE: This will return true for any `EOS_ProductUserId` created with `EOS_ProductUserId_FromString` as there is no validation

- Parameter AccountId: The Product User ID to check for validity
- Returns: `EOS_TRUE` if the `EOS_ProductUserId` is valid, otherwise `EOS_FALSE`
*/
public func SwiftEOS_ProductUserId_IsValid(
    AccountId: EOS_ProductUserId?
) throws -> Bool {
    try withPointerManager { pointerManager in
        try returningTransformedResult(
            nested: { 
                EOS_ProductUserId_IsValid(AccountId) },
            transformedResult: { 
                try swiftBoolFromEosBool($0) }
        ) }
}
