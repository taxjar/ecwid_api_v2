require_relative "../paged_ecwid_response"

module EcwidApi
  module Api
    # Public: This is the Ecwid API for Orders. It abstracts the end-points
    # of the Ecwid API that deal with orders.
    class Profile < Base
      def all(params = {})
        PagedEcwidResponse.new(client, "profile", params) do |profile_hash|
          Profile.new(profile_hash, client: client)
        end
      end
    end
  end
end
