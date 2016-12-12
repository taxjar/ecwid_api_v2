module EcwidApi
  # Public: This is an Ecwid Profile
  class Profile < Entity
    self.url_root = "profile"

    ecwid_reader :company, :city, :countryCode, :stateOrProvinceCode, :currency, :currencyPrefix, :taxes

    ecwid_writer :company, :city, :countryCode, :stateOrProvinceCode, :currency, :currencyPrefix, :taxes

    def code
      country_code
    end
  end
end
