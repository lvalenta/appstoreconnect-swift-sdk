// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterMatchmakingRules.WithID.Metrics {
	public var matchmakingBooleanRuleResults: MatchmakingBooleanRuleResults {
		MatchmakingBooleanRuleResults(path: path + "/matchmakingBooleanRuleResults")
	}

	public struct MatchmakingBooleanRuleResults {
		/// Path: `/v1/gameCenterMatchmakingRules/{id}/metrics/matchmakingBooleanRuleResults`
		public let path: String

		public func get(parameters: GetParameters) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingBooleanRuleResultsV1MetricResponse> {
			Request(path: path, method: "GET", query: parameters.asQuery, id: "gameCenterMatchmakingRules-matchmakingBooleanRuleResults-get_metrics")
		}

		public struct GetParameters {
			public var limit: Int?
			public var granularity: [Granularity]
			public var groupBy: [GroupBy]?
			public var filterResult: String?
			public var filterGameCenterMatchmakingQueue: String?
			public var sort: [Sort]?

			public enum Granularity: String, Codable, CaseIterable {
				case p1d = "P1D"
				case pt1h = "PT1H"
				case pt15m = "PT15M"
			}

			public enum GroupBy: String, Codable, CaseIterable {
				case gameCenterMatchmakingQueue
				case result
			}

			public enum Sort: String, Codable, CaseIterable {
				case count
				case minuscount = "-count"
			}

			public init(limit: Int? = nil, granularity: [Granularity], groupBy: [GroupBy]? = nil, filterResult: String? = nil, filterGameCenterMatchmakingQueue: String? = nil, sort: [Sort]? = nil) {
				self.limit = limit
				self.granularity = granularity
				self.groupBy = groupBy
				self.filterResult = filterResult
				self.filterGameCenterMatchmakingQueue = filterGameCenterMatchmakingQueue
				self.sort = sort
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(limit, forKey: "limit")
				encoder.encode(granularity, forKey: "granularity")
				encoder.encode(groupBy, forKey: "groupBy")
				encoder.encode(filterResult, forKey: "filter[result]")
				encoder.encode(filterGameCenterMatchmakingQueue, forKey: "filter[gameCenterMatchmakingQueue]")
				encoder.encode(sort, forKey: "sort")
				return encoder.items
			}
		}
	}
}
