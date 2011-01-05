module Subdomains
  private
    def require_no_subdomain
      if request.env['GEMSMINE_SITE']
        redirect_to request.url.gsub(/#{request.env['GEMSMINE_SITE']['tld']}\./, "")
      end
    end
end