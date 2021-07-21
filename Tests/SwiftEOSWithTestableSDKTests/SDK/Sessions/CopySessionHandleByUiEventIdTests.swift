import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleByUiEventIdTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleByUiEventId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CopySessionHandleByUiEventId = { Handle, Options, OutSessionHandle in
                GTest.current.sdkReceived.append("EOS_Sessions_CopySessionHandleByUiEventId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST)
                XCTAssertEqual(Options!.pointee.UiEventId, .zero)
                XCTAssertNotNil(OutSessionHandle)
                return .zero
            }
            defer { __on_EOS_Sessions_CopySessionHandleByUiEventId = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopySessionHandleByUiEventId(UiEventId: .zero)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByUiEventId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByUiEventId"])
    }
}
