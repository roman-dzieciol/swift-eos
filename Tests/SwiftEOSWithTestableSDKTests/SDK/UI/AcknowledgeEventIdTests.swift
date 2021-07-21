import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_AcknowledgeEventIdTests: XCTestCase {
    public func testEOS_UI_AcknowledgeEventId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_AcknowledgeEventId = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_UI_AcknowledgeEventId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST)
                XCTAssertEqual(Options!.pointee.UiEventId, .zero)
                XCTAssertEqual(Options!.pointee.Result, .zero)
                return .zero
            }
            defer { __on_EOS_UI_AcknowledgeEventId = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            try object.AcknowledgeEventId(
                UiEventId: .zero,
                Result: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_AcknowledgeEventId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UI_AcknowledgeEventId"])
    }
}
