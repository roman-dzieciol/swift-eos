import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_UI_IsValidKeyCombinationTests: XCTestCase {
    public func testEOS_UI_IsValidKeyCombination_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_IsValidKeyCombination = { Handle, KeyCombination in
                GTest.current.sdkReceived.append("EOS_UI_IsValidKeyCombination")
                XCTAssertNil(Handle)
                XCTAssertEqual(KeyCombination, .zero)
                return .zero
            }
            defer { __on_EOS_UI_IsValidKeyCombination = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Bool = try object.IsValidKeyCombination(KeyCombination: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_IsValidKeyCombination"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_IsValidKeyCombination"])
    }
}
