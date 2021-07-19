import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Metrics_EndPlayerSessionTests: XCTestCase {
    public func testEOS_Metrics_EndPlayerSession_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Metrics_EndPlayerSession = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNil(Options!.pointee.AccountId.Epic)
                XCTAssertNil(Options!.pointee.AccountId.External)
                TestGlobals.current.sdkReceived.append("EOS_Metrics_EndPlayerSession")
                return .zero
            }
            defer { __on_EOS_Metrics_EndPlayerSession = nil }
            
            // Given Actor
            let object: SwiftEOS_Metrics_Actor = SwiftEOS_Metrics_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.EndPlayerSession(
                AccountIdType: .zero,
                AccountId: .init()
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Metrics_EndPlayerSession"])
        }
    }
}
