import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_FromStringTests: XCTestCase {
    public func testEOS_EpicAccountId_FromString_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_EpicAccountId_FromString = { AccountIdString in
                XCTAssertNil(AccountIdString)
                TestGlobals.current.sdkReceived.append("EOS_EpicAccountId_FromString")
                return .nonZeroPointer
            }
            defer { __on_EOS_EpicAccountId_FromString = nil }
            
            // When SDK function is called
            let result: EOS_EpicAccountId = SwiftEOS_EpicAccountId_FromString(AccountIdString: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_EpicAccountId_FromString"])
            XCTAssertNil(result)
        }
    }
}
