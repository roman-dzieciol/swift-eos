import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Metrics_BeginPlayerSessionTests: XCTestCase {
    public func testEOS_Metrics_BeginPlayerSession_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Metrics_BeginPlayerSession = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_METRICS_BEGINPLAYERSESSION_API_LATEST)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNil(Options!.pointee.AccountId.Epic)
                XCTAssertNil(Options!.pointee.AccountId.External)
                XCTAssertNil(Options!.pointee.DisplayName)
                XCTAssertEqual(Options!.pointee.ControllerType, .zero)
                XCTAssertNil(Options!.pointee.ServerIp)
                XCTAssertNil(Options!.pointee.GameSessionId)
                TestGlobals.current.sdkReceived.append("EOS_Metrics_BeginPlayerSession")
                return .zero
            }
            defer { __on_EOS_Metrics_BeginPlayerSession = nil }
            
            // Given Actor
            let object: SwiftEOS_Metrics_Actor = SwiftEOS_Metrics_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.BeginPlayerSession(
                AccountIdType: .zero,
                AccountId: .init(),
                DisplayName: nil,
                ControllerType: .zero,
                ServerIp: nil,
                GameSessionId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Metrics_BeginPlayerSession"])
        }
    }
}
