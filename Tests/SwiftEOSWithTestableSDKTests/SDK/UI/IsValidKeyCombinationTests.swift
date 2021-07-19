import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_IsValidKeyCombinationTests: XCTestCase {
    public func testEOS_UI_IsValidKeyCombination_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_IsValidKeyCombination = { Handle, KeyCombination in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(KeyCombination, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_UI_IsValidKeyCombination")
            return .zero }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Bool = try object.IsValidKeyCombination(KeyCombination: .init(rawValue: .zero)!)
        XCTAssertEqual(result, false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_IsValidKeyCombination"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
