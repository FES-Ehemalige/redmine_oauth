module RedmineOauth
  module AccountControllerPatch

    def logout
      if User.current.anonymous?
        redirect_to home_url
      elsif request.post?
        logout_user
        redirect_to "/oauth2/sign_out?rd=https%3A%2F%2Fidp.fes-ehemalige.de%2Fauth%2Frealms%2Ffesehemalige%2Fprotocol%2Fopenid-connect%2Flogout"
      end
      # display the logout form
    end

  end # AccountControllerPatch
end
