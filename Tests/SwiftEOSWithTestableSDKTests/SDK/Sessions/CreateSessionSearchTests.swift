import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CreateSessionSearchTests: XCTestCase {
    public func testEOS_Sessions_CreateSessionSearch_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CreateSessionSearch = { Handle, Options, OutSessionSearchHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.MaxSearchResults, .zero)
                XCTAssertNil(OutSessionSearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_Sessions_CreateSessionSearch")
                return .zero
            }
            defer { __on_EOS_Sessions_CreateSessionSearch = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HSessionSearch? = try object.CreateSessionSearch(MaxSearchResults: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_CreateSessionSearch"])
            XCTAssertNil(result)
        }
    }
}
