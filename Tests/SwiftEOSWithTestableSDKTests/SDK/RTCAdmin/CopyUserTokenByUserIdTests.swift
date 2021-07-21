import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_CopyUserTokenByUserIdTests: XCTestCase {
    public func testEOS_RTCAdmin_CopyUserTokenByUserId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_CopyUserTokenByUserId = { Handle, Options, OutUserToken in
                GTest.current.sdkReceived.append("EOS_RTCAdmin_CopyUserTokenByUserId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.QueryId, .zero)
                XCTAssertNotNil(OutUserToken)
                return .zero
            }
            defer { __on_EOS_RTCAdmin_CopyUserTokenByUserId = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyUserTokenByUserId(
                    TargetUserId: nil,
                    QueryId: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByUserId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByUserId"])
    }
}
