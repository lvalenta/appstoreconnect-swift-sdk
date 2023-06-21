// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2 {
	public var appStoreVersionExperiments: AppStoreVersionExperiments {
		AppStoreVersionExperiments(path: path + "/appStoreVersionExperiments")
	}

	public struct AppStoreVersionExperiments {
		/// Path: `/v2/appStoreVersionExperiments`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionExperimentV2CreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentV2Response> {
			.post(path, body: body)
		}
	}
}
