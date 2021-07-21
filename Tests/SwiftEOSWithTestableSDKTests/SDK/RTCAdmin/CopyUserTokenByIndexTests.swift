import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_CopyUserTokenByIndexTests: XCTestCase {
    public func testEOS_RTCAdmin_CopyUserTokenByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_CopyUserTokenByIndex = { Handle, Options, OutUserToken in
                GTest.current.sdkReceived.append("EOS_RTCAdmin_CopyUserTokenByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.UserTokenIndex, .zero)
                XCTAssertEqual(Options!.pointee.QueryId, .zero)
                XCTAssertNotNil(OutUserToken)
                return .zero
            }
            defer { __on_EOS_RTCAdmin_CopyUserTokenByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyUserTokenByIndex(
                    UserTokenIndex: .zero,
                    QueryId: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByIndex"])
    }
}
