import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_IsValidKeyCombinationTests: XCTestCase {
    public func testEOS_UI_IsValidKeyCombination_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_IsValidKeyCombination = { Handle, KeyCombination in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(KeyCombination, .zero)
                TestGlobals.current.sdkReceived.append("EOS_UI_IsValidKeyCombination")
                return .zero
            }
            defer { __on_EOS_UI_IsValidKeyCombination = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Bool = try object.IsValidKeyCombination(KeyCombination: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_IsValidKeyCombination"])
            XCTAssertEqual(result, false)
        }
    }
}
