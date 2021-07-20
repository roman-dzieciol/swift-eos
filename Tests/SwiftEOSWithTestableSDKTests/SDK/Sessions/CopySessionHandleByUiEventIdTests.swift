import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleByUiEventIdTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleByUiEventId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CopySessionHandleByUiEventId = { Handle, Options, OutSessionHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEBYUIEVENTID_API_LATEST)
                XCTAssertEqual(Options!.pointee.UiEventId, .zero)
                XCTAssertNotNil(OutSessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_Sessions_CopySessionHandleByUiEventId")
                return .zero
            }
            defer { __on_EOS_Sessions_CopySessionHandleByUiEventId = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HSessionDetails? = try object.CopySessionHandleByUiEventId(UiEventId: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByUiEventId"])
            XCTAssertNil(result)
        }
    }
}
