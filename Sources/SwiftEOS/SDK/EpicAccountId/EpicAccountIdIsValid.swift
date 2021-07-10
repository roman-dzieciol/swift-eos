import Foundation
import EOSSDK

/**
Check whether or not the given Epic Online Services Account ID is considered valid
NOTE: This will return true for any `EOS_EpicAccountId` created with `EOS_EpicAccountId_FromString` as there is no validation

- Parameter AccountId: The Epic Online Services Account ID to check for validity
- Returns: `EOS_TRUE` if the `EOS_EpicAccountId` is valid, otherwise `EOS_FALSE`
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
