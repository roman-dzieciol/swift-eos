import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Platform_ClientCredentialsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Platform_ClientCredentials() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Platform_ClientCredentials.self) { cstruct in
            XCTAssertNil(cstruct.ClientId)
            XCTAssertNil(cstruct.ClientSecret)
            let swiftObject = try SwiftEOS_Platform_ClientCredentials(sdkObject: cstruct) }
    }
}
