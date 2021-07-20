import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoggedInUserByIndexTests: XCTestCase {
    public func testEOS_Connect_GetLoggedInUserByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetLoggedInUserByIndex = { Handle, Index in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Index, .zero)
                TestGlobals.current.sdkReceived.append("EOS_Connect_GetLoggedInUserByIndex")
                return nil
            }
            defer { __on_EOS_Connect_GetLoggedInUserByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetLoggedInUserByIndex(Index: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_GetLoggedInUserByIndex"])
            XCTAssertNil(result)
        }
    }
}
