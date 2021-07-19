import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_AcknowledgeEventIdTests: XCTestCase {
    public func testEOS_UI_AcknowledgeEventId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_AcknowledgeEventId = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.UiEventId, .zero)
                XCTAssertEqual(Options!.pointee.Result, .zero)
                TestGlobals.current.sdkReceived.append("EOS_UI_AcknowledgeEventId")
                return .zero
            }
            defer { __on_EOS_UI_AcknowledgeEventId = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.AcknowledgeEventId(
                UiEventId: .zero,
                Result: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_AcknowledgeEventId"])
        }
    }
}
